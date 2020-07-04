Class {
	#name : #VkExample,
	#superclass : #Object,
	#instVars : [
		'window',
		'instance',
		'debugCallback',
		'debugMessenger',
		'device',
		'physicalDevice',
		'graphicsQueue',
		'surface',
		'swapChain',
		'swapChainImages',
		'swapChainImageFormat',
		'swapChainImageViews',
		'swapExtent',
		'pipelineLayout',
		'renderPass',
		'graphicsPipeline',
		'swapChainFramebuffers',
		'commandPool',
		'commandBuffers',
		'imageAvailableSemaphores',
		'renderFinishedSemaphores',
		'inFlightFences',
		'imagesInFlight',
		'currentFrame',
		'framebufferWasResized',
		'framebufferSizeCallback',
		'vertexBuffer',
		'vertexBufferMemory'
	],
	#category : #'Vulkan-Examples'
}

{ #category : #'as yet unclassified' }
VkExample >> checkError: aResult [

	aResult ~= VkResult VK_SUCCESS value ifTrue: [self error: 'operation failed']
]

{ #category : #'as yet unclassified' }
VkExample >> chooseSwapPresentMode: aCollection [

	aCollection do: [:mode |
		mode value = VkPresentModeKHR VK_PRESENT_MODE_MAILBOX_KHR value ifTrue: [^ mode]].
	^ VkPresentModeKHR VK_PRESENT_MODE_FIFO_KHR
]

{ #category : #'as yet unclassified' }
VkExample >> chooseSwapSurfaceFormat: anArray [

	anArray do: [:format |
		(format format value = VkFormat VK_FORMAT_B8G8R8A8_SRGB value and: [
			format colorSpace value = VkColorSpaceKHR VK_COLOR_SPACE_SRGB_NONLINEAR_KHR value]) ifTrue: [^ format]].
	^ anArray at: 1
]

{ #category : #'as yet unclassified' }
VkExample >> cleanup [

	self cleanupSwapChain.
	
	VkAPI new vkDestroyBuffer: device with: vertexBuffer with: nil.
	VkAPI new vkFreeMemory: device with: vertexBufferMemory with: nil.
	
	1
		to: self maxFramesInFlight
		do: [:index |
			VkAPI new vkDestroySemaphore: device with: (renderFinishedSemaphores at: index) with: nil.
			VkAPI new vkDestroySemaphore: device with: (imageAvailableSemaphores at: index) with: nil.
			VkAPI new vkDestroyFence: device with: (inFlightFences at: index) with: nil].
	
	VkAPI new vkDestroyCommandPool: device with: commandPool with: nil.
	VkAPI new vkDestroyDevice: device with: nil.
	
	debugMessenger ifNotNil: [
		self destroyDebugUtilsMessengerEXT: instance with: debugMessenger with: nil].
	
	VkAPI new vkDestroySurfaceKHR: instance with: surface with: nil.
	VkAPI new vkDestroyInstance: instance with: nil.
	
	GLFW destroyWindow: window.
	GLFW terminate
]

{ #category : #'as yet unclassified' }
VkExample >> cleanupSwapChain [

	swapChainFramebuffers do: [:framebuffer |
		VkAPI new vkDestroyFramebuffer: device with: framebuffer with: nil].
	
	VkAPI new vkFreeCommandBuffers: device with: commandPool with: commandBuffers size with: (VkCommandBuffer fromHandle: commandBuffers getHandle).
	
	VkAPI new vkDestroyPipeline: device with: graphicsPipeline with: nil.
	VkAPI new vkDestroyPipelineLayout: device with: pipelineLayout with: nil.
	VkAPI new vkDestroyRenderPass: device with: renderPass with: nil.
	
	swapChainImageViews do: [:view |
		VkAPI new vkDestroyImageView: device with: view with: nil].
	
	VkAPI new vkDestroySwapchainKHR: device with: swapChain with: nil
]

{ #category : #'as yet unclassified' }
VkExample >> copyBufferFrom: srcBuffer to: dstBuffer size: bufferSize [

	| allocInfo commandBuffer beginInfo copyRegion submitInfo bufferPointer |
	allocInfo := VkCommandBufferAllocateInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO;
		level: VkCommandBufferLevel VK_COMMAND_BUFFER_LEVEL_PRIMARY;
		commandPool: commandPool;
		commandBufferCount: 1.
	
	commandBuffer := self
		passArrayOfPointers: 1
		of: VkCommandBuffer
		to: [:pointer :array |
			self checkError: (VkAPI new vkAllocateCommandBuffers: device with: allocInfo with: pointer).
			array at: 1].
	
	beginInfo := VkCommandBufferBeginInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO;
		flags: VkCommandBufferUsageFlags VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT.
	
	copyRegion := VkBufferCopy externalNew
		zeroAllFields;
		size: bufferSize.
	
	VkAPI new vkBeginCommandBuffer: commandBuffer with: beginInfo.
	VkAPI new vkCmdCopyBuffer: commandBuffer with: srcBuffer with: dstBuffer with: 1 with: copyRegion.
	VkAPI new vkEndCommandBuffer: commandBuffer.
	
	bufferPointer := ExternalData fromHandle: (ExternalAddress allocate: ExternalAddress wordSize) type: ExternalType intptr_t.
	bufferPointer at: 1 put: commandBuffer getHandle.
	
	submitInfo := VkSubmitInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_SUBMIT_INFO;
		commandBufferCount: 1;
		pCommandBuffers: (VkCommandBuffer fromHandle: bufferPointer getHandle).
	VkAPI new vkQueueSubmit: graphicsQueue with: 1 with: submitInfo with: (VkFence on: 0).
	VkAPI new vkQueueWaitIdle: graphicsQueue.
	
	VkAPI new vkFreeCommandBuffers: device with: commandPool with: 1 with: (VkCommandBuffer fromHandle: bufferPointer getHandle)
]

{ #category : #'as yet unclassified' }
VkExample >> createBuffer: size usage: usage properties: properties map: aBoolean do: aBlock [

	| buffer memory bufferInfo memRequirements |
	bufferInfo := VkBufferCreateInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO;
		size: size;
		usage: usage;
		sharingMode: VkSharingMode VK_SHARING_MODE_EXCLUSIVE.
	self
		passArrayOfPointers: 1
		of: VkBuffer
		to: [:pointer :array |
			self checkError: (VkAPI new vkCreateBuffer: device with: bufferInfo with: nil with: pointer).
			buffer := array at: 1].
	
	memRequirements := self
		passArrayOfPointers: 1
		of: VkMemoryRequirements
		to: [:pointer :array |
			VkAPI new vkGetBufferMemoryRequirements: device with: buffer with: pointer.
			array at: 1].
	
	self
		passArrayOfPointers: 1
		of: VkDeviceMemory
		to: [:pointer :array | | allocInfo |
			allocInfo := VkMemoryAllocateInfo new
				sType: VkStructureType VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
				allocationSize: memRequirements size;
				memoryTypeIndex: (self findMemoryType: memRequirements memoryTypeBits properties: properties).
			self checkError: (VkAPI new vkAllocateMemory: device with: allocInfo with: nil with: pointer).
			memory := array at: 1].
	
	self checkError: (VkAPI new vkBindBufferMemory: device with: buffer with: memory with: (VkDeviceSize on: 0)).
	
	^ aBoolean
		ifTrue: [ | externalData ret dataPointer |
			dataPointer := ExternalData fromHandle: (ExternalAddress allocate: ExternalAddress wordSize) type: ExternalType intptr_t.
			self checkError: (VkAPI new
				vkMapMemory: device
				with: memory
				with: (VkDeviceSize on: 0)
				with: bufferInfo size
				with: (VkMemoryMapFlags on: 0)
				with: dataPointer).
			externalData := (ExternalData fromHandle: (ExternalAddress fromInteger: (dataPointer at: 1)) type: ExternalType float)
				size: bufferInfo size value;
				yourself.
			ret := aBlock value: buffer value: memory value: externalData.
			VkAPI new vkUnmapMemory: device with: memory.
			ret]
		ifFalse: [aBlock value: buffer value: memory]
]

{ #category : #'as yet unclassified' }
VkExample >> createCommandBuffers [

	| allocInfo |
	allocInfo := VkCommandBufferAllocateInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO;
		commandPool: commandPool;
		level: VkCommandBufferLevel VK_COMMAND_BUFFER_LEVEL_PRIMARY;
		commandBufferCount: swapChainFramebuffers size.
	
	self
		passArrayOfPointers: swapChainFramebuffers size
		of: VkCommandBuffer
		to: [:pointer :array |
			self checkError: (VkAPI new vkAllocateCommandBuffers: device with: allocInfo with: pointer).
			commandBuffers := array].
	
	1
		to: commandBuffers size
		do: [:index | | beginInfo renderPassInfo clearColor commandBuffer framebuffer |
			commandBuffer := commandBuffers at: index.
			framebuffer := swapChainFramebuffers at: index.
			beginInfo := VkCommandBufferBeginInfo externalNew
				zeroAllFields;
				sType: VkStructureType VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO.
			self checkError: (VkAPI new vkBeginCommandBuffer: commandBuffer with: beginInfo).
			
			renderPassInfo := VkRenderPassBeginInfo externalNew
				zeroAllFields;
				sType: VkStructureType VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO;
				renderPass: renderPass;
				framebuffer: framebuffer.
			renderPassInfo renderArea offset
				x: 0;
				y: 0.
			renderPassInfo renderArea extent: swapExtent.
			
			clearColor := VkClearValue externalNew zeroAllFields.
			clearColor color float32
				at: 1 put: 1.0;
				at: 2 put: 0.0;
				at: 3 put: 0.0;
				at: 4 put: 1.0.
			
			renderPassInfo
				clearValueCount: 1;
				pClearValues: clearColor.
			
			VkAPI new
				vkCmdBeginRenderPass: commandBuffer
				with: renderPassInfo
				with: VkSubpassContents VK_SUBPASS_CONTENTS_INLINE.
			VkAPI new
				vkCmdBindPipeline: commandBuffer
				with: VkPipelineBindPoint VK_PIPELINE_BIND_POINT_GRAPHICS
				with: graphicsPipeline.
			
			self passArrayOfPointers: 1 of: VkBuffer to: [:bufferPointer :bufferArray |
				bufferArray at: 1 put: vertexBuffer.
				self passArrayOfPointers: 1 of: VkDeviceSize to: [:sizePointer :sizeArray |
					sizeArray at: 1 put: (VkDeviceSize on: 0).
					VkAPI new vkCmdBindVertexBuffers: commandBuffer with: 0 with: 1 with: bufferPointer with: sizePointer]].
			
			VkAPI new vkCmdDraw: commandBuffer with: 3 with: 1 with: 0 with: 0.
			VkAPI new vkCmdEndRenderPass: commandBuffer.
			
			self checkError: (VkAPI new vkEndCommandBuffer: commandBuffer)]
]

{ #category : #'as yet unclassified' }
VkExample >> createCommandPool [

	| poolInfo |
	poolInfo := VkCommandPoolCreateInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO;
		queueFamilyIndex: self graphicsQueueIndex;
		flags: (VkCommandPoolCreateFlags on: 0).
	
	self
		passArrayOfPointers: 1
		of: VkCommandPool
		to: [:pointer :array |
			self checkError: (VkAPI new vkCreateCommandPool: device with: poolInfo with: nil with: pointer).
			commandPool := array at: 1]
]

{ #category : #'as yet unclassified' }
VkExample >> createDebugMessenger [

	debugCallback ifNil: [
		debugCallback := FFICallback
			signature: '<callback: VkBool32 (*)(VkDebugUtilsMessageSeverityFlagsEXT VkDebugUtilsMessageTypeFlagsEXT VkDebugUtilsMessengerCallbackDataEXT* void*)>'
			block: [:messageSeverity :messageTypes :pCallbackData :pUserData |
				((messageSeverity value bitAnd: VkDebugUtilsMessageSeverityFlagsEXT VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT value) ~= 0 and: [
					(pCallbackData pMessage includesSubstring: 'wrong ELF class') not]) ifTrue: [
					SBToggledCode comment: '' active: 1 do: {[self halt]}].
				Transcript
					nextPutAll: (self messageSeverityToString: messageSeverity);
					nextPutAll: ': ';
					nextPutAll: pCallbackData pMessage;
					cr;
					flush.
				0]].
	^ VkDebugUtilsMessengerCreateInfoEXT externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT;
		messageSeverity: (VkDebugUtilsMessageSeverityFlagsEXT on: (VkDebugUtilsMessageSeverityFlagsEXT VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT bitOr: VkDebugUtilsMessageSeverityFlagsEXT VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT));
		messageType: (VkDebugUtilsMessageTypeFlagsEXT on: ((VkDebugUtilsMessageTypeFlagsEXT VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT bitOr: VkDebugUtilsMessageTypeFlagsEXT VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT) bitOr: VkDebugUtilsMessageTypeFlagsEXT VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT));
		pfnUserCallback: (debugCallback thunk asType: (ExternalType structTypeNamed: #'PFN_vkDebugUtilsMessengerCallbackEXT'))
]

{ #category : #'as yet unclassified' }
VkExample >> createDebugUtilsMessengerEXT: instance with: createInfo with: pAllocator with: pDebugMessenger [

	| funcAddr |
	VkAPI new vkGetInstanceProcAddr: instance with: 'vkEnumeratePhysicalDevices'.
	funcAddr := VkAPI new vkGetInstanceProcAddr: instance with: 'vkCreateDebugUtilsMessengerEXT'.
	funcAddr isNull ifTrue: [self error: 'extension method could not be loaded'].
	
	^ SBToggledCode
		comment: ''
		active: 2
		do: {
			[
				(ExternalLibraryFunction
					name: 'vkCreateDebugUtilsMessengerEXT'
					module: nil
					callType: ExternalLibraryFunction callTypeAPI
					returnType: VkResult externalType
					argumentTypes: (ExternalType lookupTypes: #(#VkInstance #VkDebugUtilsMessengerCreateInfoEXT #* #VkAllocationCallbacks #* #VkDebugUtilsMessengerEXT #*)))
					setHandle: funcAddr getHandle;
					invokeWith: instance with: createInfo with: pAllocator with: pDebugMessenger].
			[ | method |
				method := VkAPI >> #vkCreateDebugUtilsMessengerEXT:with:with:with:.
				(method literalAt: 1) setHandle: funcAddr getHandle.
				VkAPI new vkCreateDebugUtilsMessengerEXT: instance with: createInfo with: pAllocator with: pDebugMessenger]
		}
]

{ #category : #'as yet unclassified' }
VkExample >> createFramebuffers [

	swapChainFramebuffers := Array new: swapChainImageViews size.
	1
		to: swapChainFramebuffers size
		do: [:index | | createInfo attachment |
			attachment := ExternalData fromHandle: (ExternalAddress allocate: VkImageView byteSize) type: VkImageView externalType asPointerType.
			attachment at: 1 put: (swapChainImageViews at: index).
			
			createInfo := VkFramebufferCreateInfo externalNew
				zeroAllFields;
				sType: VkStructureType VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO;
				renderPass: renderPass;
				attachmentCount: 1;
				pAttachments: attachment;
				width: swapExtent width;
				height: swapExtent height;
				layers: 1.
			
			self
				passArrayOfPointers: 1
				of: VkFramebuffer
				to: [:pointer :array |
					self checkError: (VkAPI new vkCreateFramebuffer: device with: createInfo with: nil with: pointer).
					swapChainFramebuffers at: index put: (array at: 1)]]
]

{ #category : #'as yet unclassified' }
VkExample >> createGraphicsPipeline [

	| vertex fragment vertexCreateInfo fragmentCreateInfo vertexInputInfo inputAssembly viewport scissor viewportState multisampling colorBlendAttachment colorBlending pipelineLayoutInfo rasterizer pipelineInfo shaderStages |
	vertex := self createShaderModuleFrom: '/home/tom/Code/squeak/squeak-morphic-layers/vert.spv'.
	fragment := self createShaderModuleFrom: '/home/tom/Code/squeak/squeak-morphic-layers/frag.spv'.
	
	shaderStages := ExternalData
		fromHandle: (ExternalAddress allocate: VkPipelineShaderStageCreateInfo byteSize * 2)
		type: VkPipelineShaderStageCreateInfo externalType asPointerType.
	(shaderStages at: 1)
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO;
		stage: VkShaderStageFlags VK_SHADER_STAGE_VERTEX_BIT;
		module: vertex;
		pName: 'main' asExternalString.
	(shaderStages at: 2)
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO;
		stage: VkShaderStageFlags VK_SHADER_STAGE_FRAGMENT_BIT;
		module: fragment;
		pName: 'main' asExternalString.
	
	vertexInputInfo := VkPipelineVertexInputStateCreateInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO;
		vertexBindingDescriptionCount: 1;
		pVertexBindingDescriptions: self createVertexBindingDescription;
		vertexAttributeDescriptionCount: 2;
		pVertexAttributeDescriptions: self createVertexAttributeDescription.
	
	inputAssembly := VkPipelineInputAssemblyStateCreateInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO;
		topology: VkPrimitiveTopology VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST;
		primitiveRestartEnable: (VkBool32 on: 0).
	
	viewport := VkViewport externalNew
		zeroAllFields;
		x: 0.0;
		y: 0.0;
		width: swapExtent width;
		height: swapExtent height;
		minDepth: 0.0;
		maxDepth: 1.0.
	
	scissor := VkRect2D externalNew.
	scissor offset
		x: 0;
		y: 0.
	scissor extent: swapExtent.
	
	viewportState := VkPipelineViewportStateCreateInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO;
		viewportCount: 1;
		pViewports: viewport;
		scissorCount: 1;
		pScissors: scissor.
	
	rasterizer := VkPipelineRasterizationStateCreateInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO;
		depthClampEnable: (VkBool32 on: 0);
		rasterizerDiscardEnable: (VkBool32 on: 0);
		polygonMode: VkPolygonMode VK_POLYGON_MODE_FILL;
		lineWidth: 1.0;
		cullMode: VkCullModeFlags VK_CULL_MODE_BACK_BIT;
		frontFace: VkFrontFace VK_FRONT_FACE_CLOCKWISE;
		depthBiasEnable: (VkBool32 on: 0).
	
	multisampling := VkPipelineMultisampleStateCreateInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO;
		sampleShadingEnable: (VkBool32 on: 0);
		rasterizationSamples: VkSampleCountFlags VK_SAMPLE_COUNT_1_BIT.
	
	colorBlendAttachment := VkPipelineColorBlendAttachmentState externalNew
		zeroAllFields;
		colorWriteMask: (VkColorComponentFlags on: (VkColorComponentFlags VK_COLOR_COMPONENT_R_BIT bitOr: (VkColorComponentFlags VK_COLOR_COMPONENT_G_BIT bitOr: (VkColorComponentFlags VK_COLOR_COMPONENT_B_BIT bitOr: VkColorComponentFlags VK_COLOR_COMPONENT_A_BIT))));
		blendEnable: (VkBool32 on: 0).
	colorBlending := VkPipelineColorBlendStateCreateInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO;
		logicOpEnable: (VkBool32 on: 0);
		logicOp: VkLogicOp VK_LOGIC_OP_COPY;
		attachmentCount: 1;
		pAttachments: colorBlendAttachment;
		blendConstants1: 0.0;
		blendConstants2: 0.0;
		blendConstants3: 0.0;
		blendConstants4: 0.0.
	
	pipelineLayoutInfo := VkPipelineLayoutCreateInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO;
		setLayoutCount: 0;
		pushConstantRangeCount: 0.
	
	self
		passArrayOfPointers: 1
		of: VkPipelineLayout
		to: [:pointer :array |
			self checkError: (VkAPI new vkCreatePipelineLayout: device with: pipelineLayoutInfo with: nil with: pointer).
			pipelineLayout := array at: 1].
	
	pipelineInfo := VkGraphicsPipelineCreateInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO;
		stageCount: 2;
		pStages: shaderStages;
		pVertexInputState: vertexInputInfo;
		pInputAssemblyState: inputAssembly;
		pViewportState: viewportState;
		pRasterizationState: rasterizer;
		pMultisampleState: multisampling;
		pColorBlendState: colorBlending;
		layout: pipelineLayout;
		renderPass: renderPass;
		subpass: 0;
		basePipelineHandle: (VkPipeline on: 0).
	self
		passArrayOfPointers: 1
		of: VkPipeline
		to: [:pointer :array |
			self checkError: (VkAPI new
				vkCreateGraphicsPipelines: device
				with: (VkPipelineCache on: 0)
				with: 1
				with: pipelineInfo
				with: nil
				with: pointer).
			graphicsPipeline := array at: 1].
	
	VkAPI new
		vkDestroyShaderModule: device with: vertex with: nil;
		vkDestroyShaderModule: device with: fragment with: nil
]

{ #category : #'as yet unclassified' }
VkExample >> createImageViews [

	swapChainImageViews := Array new: swapChainImages size.
	swapChainImages withIndexDo: [:image :index |
		self
			passArrayOfPointers: 1
			of: VkImageView
			to: [:pointer :array | | createInfo |
				createInfo := VkImageViewCreateInfo externalNew
					zeroAllFields;
					sType: VkStructureType VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO;
					image: image;
					viewType: VkImageViewType VK_IMAGE_VIEW_TYPE_2D;
					format: swapChainImageFormat.
				createInfo components
					r: VkComponentSwizzle VK_COMPONENT_SWIZZLE_IDENTITY;
					g: VkComponentSwizzle VK_COMPONENT_SWIZZLE_IDENTITY;
					b: VkComponentSwizzle VK_COMPONENT_SWIZZLE_IDENTITY;
					a: VkComponentSwizzle VK_COMPONENT_SWIZZLE_IDENTITY.
				createInfo subresourceRange
					aspectMask: VkImageAspectFlags VK_IMAGE_ASPECT_COLOR_BIT;
					baseMipLevel: 0;
					levelCount: 1;
					baseArrayLayer: 0;
					layerCount: 1.
				
				self checkError: (VkAPI new vkCreateImageView: device with: createInfo with: nil with: pointer).
				swapChainImageViews at: index put: (array at: 1)]]
]

{ #category : #'as yet unclassified' }
VkExample >> createInstance [

	| appInfo createInfo applicationName engineName layerNames debugUtilsMessengerCreateInfo extensionsAndCount |
	layerNames := self layerNames.
	applicationName := 'Hello Triangle' asExternalString.
	engineName := 'No Engine' asExternalString.
	appInfo := VkApplicationInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_APPLICATION_INFO;
		pApplicationName: applicationName;
		applicationVersion: (self vkMakeVersionMajor: 1 minor: 0 patch: 0);
		pEngineName: engineName;
		engineVersion: (self vkMakeVersionMajor: 1 minor: 0 patch: 0);
		apiVersion: (self vkMakeVersionMajor: 1 minor: 0 patch: 0).
	
	extensionsAndCount := self getExtensionNamesAndCount.
	debugUtilsMessengerCreateInfo := self createDebugMessenger.
	
	createInfo := VkInstanceCreateInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO;
		pApplicationInfo: appInfo;
		enabledExtensionCount: extensionsAndCount second;
		ppEnabledExtensionNames: (extensionsAndCount first asType: ExternalType string);
		enabledLayerCount: 1;
		ppEnabledLayerNames: layerNames;
		pNext: debugUtilsMessengerCreateInfo.
	
	self
		passArrayOfPointers: 1
		of: VkInstance
		to: [:pointer :array |
			self checkError: (VkAPI new vkCreateInstance: createInfo with: nil with: pointer).
			instance := array at: 1]
]

{ #category : #'as yet unclassified' }
VkExample >> createLogicalDevice [

	| queueCreateInfo queueCount queues createInfo graphicsQueueIndex extensionsAndCount prioritiesPtr |
	queueCount := IntegerArray new: 1.
	VkAPI new vkGetPhysicalDeviceQueueFamilyProperties: physicalDevice with: queueCount with: nil.
	self assert: queueCount first = 1.
	
	queues := VkQueueFamilyProperties externalNew zeroAllFields.
	
	self checkError: (VkAPI new vkGetPhysicalDeviceQueueFamilyProperties: physicalDevice with: queueCount with: queues).
	self assert: (queues queueFlags value bitAnd: VkQueueFlags VK_QUEUE_GRAPHICS_BIT) ~= 0.
	graphicsQueueIndex := self graphicsQueueIndex.
	
	self
		passArrayOfPointers: 1
		of: VkBool32
		to: [:pointer :array |
			VkAPI new vkGetPhysicalDeviceSurfaceSupportKHR: physicalDevice with: graphicsQueueIndex with: surface with: pointer.
			self assert: (array at: 1) = (VkBool32 on: 1)].
	
	prioritiesPtr := ExternalData
		fromHandle: (ExternalAddress allocate: ExternalType float byteSize)
		type: ExternalType float asPointerType.
	prioritiesPtr at: 1 put: 1.0.
	queueCreateInfo := VkDeviceQueueCreateInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO;
		queueFamilyIndex: graphicsQueueIndex;
		pQueuePriorities: prioritiesPtr;
		queueCount: 1.
	
	extensionsAndCount := self getDeviceExtensionNamesAndCount.
	createInfo := VkDeviceCreateInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO;
		pQueueCreateInfos: queueCreateInfo;
		queueCreateInfoCount: 1;
		pEnabledFeatures: VkPhysicalDeviceFeatures externalNew zeroAllFields;
		ppEnabledExtensionNames: (extensionsAndCount first asType: ExternalType string);
		enabledExtensionCount: extensionsAndCount second;
		ppEnabledLayerNames: self layerNames;
		enabledLayerCount: 1.
	
	self
		passArrayOfPointers: 1
		of: VkDevice
		to: [:pointer :array |
			self checkError: (VkAPI new vkCreateDevice: physicalDevice with: createInfo with: nil with: pointer).
			device := array at: 1].
	
	self
		passArrayOfPointers: 1
		of: VkQueue
		to: [:pointer :array |
			VkAPI new vkGetDeviceQueue: device with: graphicsQueueIndex with: 0 with: pointer.
			graphicsQueue := array at: 1]
]

{ #category : #'as yet unclassified' }
VkExample >> createRenderPass [

	| colorAttachmentRef colorAttachment subpass renderPassInfo dependency |
	colorAttachment := VkAttachmentDescription externalNew
		zeroAllFields;
		format: swapChainImageFormat;
		samples: VkSampleCountFlags VK_SAMPLE_COUNT_1_BIT;
		loadOp: VkAttachmentLoadOp VK_ATTACHMENT_LOAD_OP_CLEAR;
		storeOp: VkAttachmentStoreOp VK_ATTACHMENT_STORE_OP_STORE;
		stencilLoadOp: VkAttachmentLoadOp VK_ATTACHMENT_LOAD_OP_DONT_CARE;
		stencilStoreOp: VkAttachmentStoreOp VK_ATTACHMENT_STORE_OP_DONT_CARE;
		initialLayout: VkImageLayout VK_IMAGE_LAYOUT_UNDEFINED;
		finalLayout: VkImageLayout VK_IMAGE_LAYOUT_PRESENT_SRC_KHR.
	
	colorAttachmentRef := VkAttachmentReference externalNew
		zeroAllFields;
		attachment: 0;
		layout: VkImageLayout VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL.
	
	subpass := VkSubpassDescription externalNew
		zeroAllFields;
		pipelineBindPoint: VkPipelineBindPoint VK_PIPELINE_BIND_POINT_GRAPHICS;
		colorAttachmentCount: 1;
		pColorAttachments: colorAttachmentRef.
	
	dependency := VkSubpassDependency externalNew
		zeroAllFields;
		srcSubpass: VkAPIConstants VK_SUBPASS_EXTERNAL value;
		dstSubpass: 0;
		srcStageMask: VkPipelineStageFlags VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT;
		srcAccessMask: (VkAccessFlags on: 0);
		dstStageMask: VkPipelineStageFlags VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT;
		dstAccessMask: VkAccessFlags VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT.
	
	renderPassInfo := VkRenderPassCreateInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO;
		attachmentCount: 1;
		pAttachments: colorAttachment;
		subpassCount: 1;
		pSubpasses: subpass;
		dependencyCount: 1;
		pDependencies: dependency.
	
	self
		passArrayOfPointers: 1
		of: VkRenderPass
		to: [:pointer :array |
			self checkError: (VkAPI new vkCreateRenderPass: device with: renderPassInfo with: nil with: pointer).
			renderPass := array at: 1]
]

{ #category : #'as yet unclassified' }
VkExample >> createShaderModuleFrom: aString [

	| source |
	source := FileStream readOnlyFileNamed: aString do: [:file |
		file
			binary;
			contents].
	^ VkShaderModuleCreateInfo externalNewDo: [:createInfo |
		createInfo
			zeroAllFields;
			sType: VkStructureType VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO;
			codeSize: source size;
			pCode: (source copyToExternalMemoryType: ExternalType uint32_t asPointerType).
		
		self
			passArrayOfPointers: 1
			of: VkShaderModule
			to: [:pointer :array |
				self checkError: (VkAPI new vkCreateShaderModule: device with: createInfo with: nil with: pointer).
				array at: 1]]
]

{ #category : #'as yet unclassified' }
VkExample >> createSurface [

	| ptr |
	ptr := ExternalData fromHandle: (ExternalAddress allocate: 8) type: ExternalType intptr_t asPointerType.
	GLFW createWindowSurface: instance with: window with: nil with: ptr.
	surface := VkSurfaceKHR on: (ptr at: 1)
]

{ #category : #'as yet unclassified' }
VkExample >> createSwapChain [

	| capabilities formatCount formats surfaceFormat presentMode presentModes presentModeCount imageCount createInfo imageCountRet |
	capabilities := VkSurfaceCapabilitiesKHR externalNew zeroAllFields.
	VkAPI new vkGetPhysicalDeviceSurfaceCapabilitiesKHR: physicalDevice with: surface with: capabilities.
	
	formatCount := IntegerArray new: 1.
	VkAPI new vkGetPhysicalDeviceSurfaceFormatsKHR: physicalDevice with: surface with: formatCount with: nil.
	formats := VkSurfaceFormatKHR allocate: formatCount first.
	VkAPI new
		vkGetPhysicalDeviceSurfaceFormatsKHR: physicalDevice
		with: surface
		with: formatCount
		with: (VkSurfaceFormatKHR fromHandle: formats getHandle).
	
	presentModeCount := IntegerArray new: 1.
	VkAPI new vkGetPhysicalDeviceSurfacePresentModesKHR: physicalDevice with: surface with: presentModeCount with: nil.
	self
		passArrayOfPointers: presentModeCount first
		of: VkPresentModeKHR
		to: [:pointer :array |
			VkAPI new
				vkGetPhysicalDeviceSurfacePresentModesKHR: physicalDevice
				with: surface
				with: presentModeCount
				with: pointer.
			presentModes := array].
	
	surfaceFormat := self chooseSwapSurfaceFormat: formats.
	swapChainImageFormat := surfaceFormat format.
	presentMode := self chooseSwapPresentMode: presentModes.
	swapExtent := capabilities currentExtent.
	
	imageCount := capabilities minImageCount + 1.
	(capabilities maxImageCount > 0 and: [imageCount > capabilities maxImageCount]) ifTrue: [imageCount := capabilities maxImageCount].
	
	createInfo := VkSwapchainCreateInfoKHR externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR;
		surface: surface;
		minImageCount: imageCount;
		imageFormat: surfaceFormat format;
		imageColorSpace: surfaceFormat colorSpace;
		imageExtent: swapExtent;
		imageArrayLayers: 1;
		imageUsage: VkImageUsageFlags VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT;
		imageSharingMode: VkSharingMode VK_SHARING_MODE_EXCLUSIVE;
		preTransform: capabilities currentTransform;
		compositeAlpha: VkCompositeAlphaFlagsKHR VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR;
		presentMode: presentMode;
		clipped: (VkBool32 on: 1).
	self
		passArrayOfPointers: 1
		of: VkSwapchainKHR
		to: [:pointer :array |
			self checkError: (VkAPI new vkCreateSwapchainKHR: device with: createInfo with: nil with: pointer).
			swapChain := array at: 1].
	
	imageCountRet := IntegerArray new: 1.
	VkAPI new vkGetSwapchainImagesKHR: device with: swapChain with: imageCountRet with: nil.
	
	self
		passArrayOfPointers: imageCountRet first
		of: VkImage
		to: [:pointer :array |
			self checkError: (VkAPI new vkGetSwapchainImagesKHR: device with: swapChain with: imageCountRet with: pointer).
			swapChainImages := array]
]

{ #category : #'as yet unclassified' }
VkExample >> createSyncObjects [

	| semaphoreInfo fenceInfo |
	currentFrame := 1.
	
	semaphoreInfo := VkSemaphoreCreateInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO.
	fenceInfo := VkFenceCreateInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_FENCE_CREATE_INFO;
		flags: VkFenceCreateFlags VK_FENCE_CREATE_SIGNALED_BIT.
	
	imageAvailableSemaphores := Array new: self maxFramesInFlight.
	renderFinishedSemaphores := Array new: self maxFramesInFlight.
	inFlightFences := Array new: self maxFramesInFlight.
	
	imagesInFlight := Array new: swapChainImages size.
	1 to: swapChainImages size do: [:index | imagesInFlight at: index put: (VkFence on: 0)].
	
	1
		to: self maxFramesInFlight
		do: [:index |
			self
				passArrayOfPointers: 1
				of: VkFence
				to: [:pointer :array |
					self checkError: (VkAPI new vkCreateFence: device with: fenceInfo with: nil with: pointer).
					inFlightFences at: index put: (array at: 1)].
			self
				passArrayOfPointers: 1
				of: VkSemaphore
				to: [:pointer :array |
					self checkError: (VkAPI new vkCreateSemaphore: device with: semaphoreInfo with: nil with: pointer).
					imageAvailableSemaphores at: index put: (array at: 1)].
			self
				passArrayOfPointers: 1
				of: VkSemaphore
				to: [:pointer :array |
					self checkError: (VkAPI new vkCreateSemaphore: device with: semaphoreInfo with: nil with: pointer).
					renderFinishedSemaphores at: index put: (array at: 1)]]
]

{ #category : #'as yet unclassified' }
VkExample >> createVertexAttributeDescription [

	^ self
		passArrayOfPointers: 2
		of: VkVertexInputAttributeDescription
		to: [:pointer :array |
			(array at: 1)
				binding: 0;
				location: 0;
				format: VkFormat VK_FORMAT_R32G32_SFLOAT;
				offset: ExternalType float byteSize * 0.
			(array at: 2)
				binding: 0;
				location: 1;
				format: VkFormat VK_FORMAT_R32G32B32_SFLOAT;
				offset: ExternalType float byteSize * 2.
			pointer]
]

{ #category : #'as yet unclassified' }
VkExample >> createVertexBindingDescription [

	^ VkVertexInputBindingDescription externalNew
		zeroAllFields;
		binding: 0;
		stride: ExternalType float byteSize * 5;
		inputRate: VkVertexInputRate VK_VERTEX_INPUT_RATE_VERTEX
]

{ #category : #'as yet unclassified' }
VkExample >> createVertexBuffer [

	| bufferSize stagingBuffer stagingBufferMemory |
	bufferSize := VkDeviceSize on: ExternalType float byteSize * (3 * 5).
	self
		createBuffer: bufferSize
		usage: VkBufferUsageFlags VK_BUFFER_USAGE_TRANSFER_SRC_BIT
		properties: VkMemoryPropertyFlags VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT value + VkMemoryPropertyFlags VK_MEMORY_PROPERTY_HOST_COHERENT_BIT value
		map: true
		do: [:buffer :memory :externalData | | data |
			data := {0.0. -0.5. 1.0. 0.0. 0.0. 0.5. 0.5. 0.0. 1.0. 0.0. -0.5. 0.5. 0.0. 0.0. 1.0}.
			1 to: data size do: [:index | externalData floatAt: index put: (data at: index)].
			stagingBuffer := buffer.
			stagingBufferMemory := memory].
	
	self
		createBuffer: bufferSize
		usage: (VkBufferUsageFlags on: VkBufferUsageFlags VK_BUFFER_USAGE_VERTEX_BUFFER_BIT value + VkBufferUsageFlags VK_BUFFER_USAGE_TRANSFER_DST_BIT value)
		properties: VkMemoryPropertyFlags VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT
		map: false
		do: [:buffer :memory | | data |
			data := {0.0. -0.5. 1.0. 0.0. 0.0. 0.5. 0.5. 0.0. 1.0. 0.0. -0.5. 0.5. 0.0. 0.0. 1.0}.
			vertexBuffer := buffer.
			vertexBufferMemory := memory.
			self copyBufferFrom: stagingBuffer to: vertexBuffer size: bufferSize].
	
	VkAPI new vkDestroyBuffer: device with: stagingBuffer with: nil.
	VkAPI new vkFreeMemory: device with: stagingBufferMemory with: nil
]

{ #category : #'as yet unclassified' }
VkExample >> destroyDebugUtilsMessengerEXT: instance with: messenger with: pAllocator [

	| funcAddr method |
	funcAddr := VkAPI new vkGetInstanceProcAddr: instance with: 'vkDestroyDebugUtilsMessengerEXT'.
	funcAddr ifNil: [self error: 'extension method could not be loaded'].
	
	method := VkAPI >> #vkDestroyDebugUtilsMessengerEXT:with:with:.
	(method literalAt: 1) setHandle: funcAddr getHandle.
	^ VkAPI new vkDestroyDebugUtilsMessengerEXT: instance with: messenger with: pAllocator
]

{ #category : #'as yet unclassified' }
VkExample >> drawFrame [

	| imageIndex submitInfo presentInfo signalSemaphores waitSemaphores waitStages swapChains imageIndices currentInFlight result |
	currentInFlight := ExternalData fromHandle: (ExternalAddress allocate: VkFence byteSize) type: VkFence externalType asPointerType.
	currentInFlight at: 1 put: (inFlightFences at: currentFrame).
	VkAPI new
		vkWaitForFences: device
		with: 1
		with: (VkFence fromHandle: currentInFlight getHandle)
		with: (VkBool32 on: 1)
		with: self waitTimeout.
	
	imageIndex := IntegerArray new: 1.
	result := VkResult on: (VkAPI new
		vkAcquireNextImageKHR: device
		with: swapChain
		with: self waitTimeout
		with: (imageAvailableSemaphores at: currentFrame)
		with: (VkFence on: 0)
		with: imageIndex).
	result = VkResult VK_ERROR_OUT_OF_DATE_KHR
		ifTrue: [^ self recreateSwapChain]
		ifFalse: [
			(result = VkResult VK_SUCCESS or: [result = VkResult VK_SUBOPTIMAL_KHR]) ifFalse: [self error: 'Failed to acquire swap chain image']].
	
	(imagesInFlight at: imageIndex first + 1) = (VkFence on: 0) ifFalse: [ | currentImagesInFlight |
		currentImagesInFlight := ExternalData fromHandle: (ExternalAddress allocate: VkFence byteSize) type: VkFence externalType asPointerType.
		currentImagesInFlight at: 1 put: (imagesInFlight at: imageIndex first + 1).
		VkAPI new
			vkWaitForFences: device
			with: 1
			with: (VkFence fromHandle: currentImagesInFlight getHandle)
			with: (VkBool32 on: 1)
			with: self waitTimeout].
	imagesInFlight at: imageIndex first + 1 put: (inFlightFences at: currentFrame).
	
	waitSemaphores := ExternalData fromHandle: (ExternalAddress allocate: VkSemaphore byteSize) type: VkSemaphore externalType asPointerType.
	waitSemaphores at: 1 put: (imageAvailableSemaphores at: currentFrame).
	signalSemaphores := ExternalData fromHandle: (ExternalAddress allocate: VkSemaphore byteSize) type: VkSemaphore externalType asPointerType.
	signalSemaphores at: 1 put: (renderFinishedSemaphores at: currentFrame).
	waitStages := ExternalData
		fromHandle: (ExternalAddress allocate: VkPipelineStageFlags byteSize)
		type: VkPipelineStageFlags externalType asPointerType.
	waitStages at: 1 put: VkPipelineStageFlags VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT.
	submitInfo := VkSubmitInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_SUBMIT_INFO;
		waitSemaphoreCount: 1;
		pWaitSemaphores: waitSemaphores;
		pWaitDstStageMask: waitStages;
		commandBufferCount: 1;
		pCommandBuffers: (ExternalData
			fromHandle: commandBuffers getHandle + (imageIndex first * VkCommandBuffer byteSize)
			type: VkCommandBuffer externalType asPointerType);
		signalSemaphoreCount: 1;
		pSignalSemaphores: signalSemaphores.
	
	currentInFlight at: 1 put: (inFlightFences at: currentFrame).
	VkAPI new vkResetFences: device with: 1 with: (VkFence fromHandle: currentInFlight getHandle).
	
	self checkError: (VkAPI new vkQueueSubmit: graphicsQueue with: 1 with: submitInfo with: (inFlightFences at: currentFrame)).
	
	swapChains := ExternalData
		fromHandle: (ExternalAddress allocate: VkSwapchainKHR byteSize)
		type: VkSwapchainKHR externalType asPointerType.
	swapChains at: 1 put: swapChain.
	imageIndices := ExternalData
		fromHandle: (ExternalAddress allocate: ExternalType uint32_t byteSize)
		type: ExternalType uint32_t asPointerType.
	imageIndices at: 1 put: imageIndex first.
	
	presentInfo := VkPresentInfoKHR externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_PRESENT_INFO_KHR;
		waitSemaphoreCount: 1;
		pWaitSemaphores: signalSemaphores;
		swapchainCount: 1;
		pSwapchains: swapChains;
		pImageIndices: imageIndices.
	result := VkResult on: (VkAPI new vkQueuePresentKHR: graphicsQueue with: presentInfo).
	
	(result = VkResult VK_ERROR_OUT_OF_DATE_KHR or: [
		result = VkResult VK_SUBOPTIMAL_KHR or: [framebufferWasResized]])
		ifTrue: [
			framebufferWasResized := false.
			self recreateSwapChain]
		ifFalse: [
			result = VkResult VK_SUCCESS ifFalse: [self error: 'failed to present swap chan image']].
	
	currentFrame := (currentFrame \\ self maxFramesInFlight) + 1
]

{ #category : #'as yet unclassified' }
VkExample >> findMemoryType: typeFilter properties: properties [

	| memProperties |
	memProperties := self
		passArrayOfPointers: 1
		of: VkPhysicalDeviceMemoryProperties
		to: [:pointer :array |
			VkAPI new vkGetPhysicalDeviceMemoryProperties: physicalDevice with: pointer.
			array at: 1].
	0
		to: memProperties memoryTypeCount - 1
		do: [:index |
			((typeFilter bitAnd: 1 << index) ~= 0 and: [
				((memProperties memoryTypes at: index + 1) propertyFlags value bitAnd: properties value) = properties value]) ifTrue: [^ index]].
	self error: 'failed to find suitable memory type'
]

{ #category : #'as yet unclassified' }
VkExample >> getDeviceExtensionNamesAndCount [

	| names extensions |
	SBExample self: [VkExample basicNew] args: [{}] label: 'example'.
	extensions := #('VK_KHR_swapchain').
	names := ExternalData
		fromHandle: (ExternalAddress allocate: ExternalAddress wordSize * extensions size)
		type: ExternalType intptr_t asPointerType.
	extensions withIndexDo: [:extensionName :index |
		names at: index put: extensionName asExternalString getHandle asInteger].
	
	^ {names. extensions size}
]

{ #category : #'as yet unclassified' }
VkExample >> getExtensionNamesAndCount [

	| names extensionCount glfwExtensions count |
	SBExample self: [VkExample basicNew] args: [{}] label: 'example'.
	extensionCount := IntegerArray new: 1.
	glfwExtensions := GLFW getRequiredInstanceExtensions: extensionCount.
	
	count := extensionCount first + 1.
	names := ExternalData
		fromHandle: (ExternalAddress allocate: ExternalAddress wordSize * count)
		type: ExternalType intptr_t asPointerType.
	1
		to: extensionCount first
		do: [:index |
			names at: index put: (glfwExtensions pointerAt: (index - 1) * ExternalAddress wordSize + 1) asInteger].
	names at: extensionCount first + 1 put: 'VK_EXT_debug_utils' asExternalString getHandle asInteger.
	
	^ {names. count}
]

{ #category : #'as yet unclassified' }
VkExample >> graphicsQueueIndex [

	^ 0
]

{ #category : #'as yet unclassified' }
VkExample >> initVulkan [

	self createInstance.
	self setupDebugMessenger.
	self createSurface.
	self pickPhysicalDevice.
	self createLogicalDevice.
	self createSwapChain.
	self createImageViews.
	self createRenderPass.
	self createGraphicsPipeline.
	self createFramebuffers.
	self createCommandPool.
	self createVertexBuffer.
	self createCommandBuffers.
	self createSyncObjects
]

{ #category : #'as yet unclassified' }
VkExample >> initWindow [

	GLFW init.
	GLFW windowHint: GLFW GLFW_CLIENT_API with: GLFW GLFW_NO_API.
	window := GLFW createWindowWidth: 800 height: 600 title: 'Vulkan' monitor: nil share: nil.
	GLFW
		setFramebufferSizeCallback: window
		with: ((framebufferSizeCallback := FFICallback signature: '<callback: void(*) (void* long long)>' block: [:win :x :y | framebufferWasResized := true]) thunk)
]

{ #category : #'as yet unclassified' }
VkExample >> initialize [

	framebufferWasResized := false.
	
	self initWindow.
	self initVulkan.
	self mainLoop.
	self cleanup
]

{ #category : #'as yet unclassified' }
VkExample >> layerNames [

	| layer addr data layers |
	SBLabel text: [
		'TODO: we''re leaking the memory for the layers here'].
	layer := 'VK_LAYER_KHRONOS_validation'.
	addr := ExternalAddress allocate: layer size + 1.
	data := ExternalData fromHandle: addr type: ExternalType string.
	1 to: layer size do: [:index |
		data getHandle byteAt: index put: (layer at: index) asInteger].
	data getHandle byteAt: layer size + 1 put: 0.
	
	layers := ExternalData fromHandle: (ExternalAddress allocate: ExternalAddress wordSize) type: ExternalType string asPointerType.
	layers getHandle pointerAt: 1 put: data getHandle.
	^ layers
]

{ #category : #'as yet unclassified' }
VkExample >> mainLoop [

	[(GLFW windowShouldClose: window) ~= 0] whileFalse: [
		GLFW pollEvents.
		self drawFrame].
	VkAPI new vkDeviceWaitIdle: device
]

{ #category : #'as yet unclassified' }
VkExample >> maxFramesInFlight [

	^ 2
]

{ #category : #'as yet unclassified' }
VkExample >> messageSeverityToString: aMessageSeverity [

	SBLabel text: ['TODO: can be multiple severities?'].
	(aMessageSeverity bitAnd: VkDebugUtilsMessageSeverityFlagsEXT VK_DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT) ~= 0 ifTrue: [^ 'INFO'].
	(aMessageSeverity bitAnd: VkDebugUtilsMessageSeverityFlagsEXT VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT) ~= 0 ifTrue: [^ 'WARNING'].
	(aMessageSeverity bitAnd: VkDebugUtilsMessageSeverityFlagsEXT VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT) ~= 0 ifTrue: [^ 'VERBOSE'].
	(aMessageSeverity bitAnd: VkDebugUtilsMessageSeverityFlagsEXT VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT) ~= 0 ifTrue: [^ 'ERROR'].
	^ 'NONE'
]

{ #category : #'as yet unclassified' }
VkExample >> messageTypeToString: aMessageType [

	aMessageType = VkDebugUtilsMessageTypeFlagsEXT VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT ifTrue: [^ 'GENERAL'].
	aMessageType = VkDebugUtilsMessageTypeFlagsEXT VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT ifTrue: [^ 'VALIDATION'].
	aMessageType = VkDebugUtilsMessageTypeFlagsEXT VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT ifTrue: [^ 'PERFORMANCE']
]

{ #category : #'as yet unclassified' }
VkExample >> passArrayOfPointers: aNumber of: aClass to: aBlock [

	| ptr |
	ptr := (ExternalData fromHandle: (ExternalAddress allocate: aClass byteSize * aNumber) type: aClass externalType)
		size: aNumber;
		yourself.
	^ aBlock value: (aClass fromHandle: ptr getHandle) value: ptr
]

{ #category : #'as yet unclassified' }
VkExample >> pickPhysicalDevice [

	| deviceCount devices properties |
	deviceCount := IntegerArray with: 0.
	self checkError: (VkAPI new vkEnumeratePhysicalDevices: instance with: deviceCount with: nil).
	deviceCount first < 1 ifTrue: [self error: 'no devices with Vulkan support found'].
	
	devices := ExternalData
		fromHandle: (ExternalAddress allocate: VkPhysicalDevice byteSize * deviceCount first)
		type: ExternalType intptr_t asPointerType.
	self checkError: (VkAPI new vkEnumeratePhysicalDevices: instance with: deviceCount with: (VkPhysicalDevice fromHandle: devices getHandle)).
	physicalDevice := VkPhysicalDevice on: (devices at: 1).
	SBToggledCode
		comment: ''
		active: 0
		do: {
			[
				properties := VkPhysicalDeviceProperties externalNew zeroAllFields.
				VkAPI new vkGetPhysicalDeviceProperties: device with: properties]
		}
]

{ #category : #'as yet unclassified' }
VkExample >> recreateSwapChain [

	| width height |
	width := IntegerArray new: 1.
	height := IntegerArray new: 1.
	GLFW getFramebufferSize: window with: width with: height.
	[width = 0 or: [height = 0]] whileTrue: [
		GLFW waitEvents.
		GLFW getFramebufferSize: window with: width with: height].
	
	VkAPI new vkDeviceWaitIdle: device.
	
	self cleanupSwapChain.
	
	self createSwapChain.
	self createImageViews.
	self createRenderPass.
	self createGraphicsPipeline.
	self createFramebuffers.
	self createCommandBuffers
]

{ #category : #'as yet unclassified' }
VkExample >> setupDebugMessenger [

	| createInfo |
	createInfo := self createDebugMessenger.
	debugMessenger := VkDebugUtilsMessengerEXT externalNew zeroAllFields.
	self
		passArrayOfPointers: 1
		of: VkDebugUtilsMessengerEXT
		to: [:pointer :array |
			self checkError: (self createDebugUtilsMessengerEXT: instance with: createInfo with: nil with: pointer).
			debugMessenger := array at: 1].
	createInfo free
]

{ #category : #'as yet unclassified' }
VkExample >> vkMakeVersionMajor: major minor: minor patch: patch [

	SBExample self: [VkExample basicNew] args: [{1. 0. 0}] label: 'example'.
	^ (major << 22 bitOr: minor << 12) bitOr: patch
]

{ #category : #'as yet unclassified' }
VkExample >> waitTimeout [

	^ 900000000
]
