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
		'swapChainImageViews'
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
		mode value = VkPresentModeKHR VK_PRESENT_MODE_MAILBOX_KHR ifTrue: [mode]].
	^ VkPresentModeKHR VK_PRESENT_MODE_FIFO_KHR
]

{ #category : #'as yet unclassified' }
VkExample >> chooseSwapSurfaceFormat: anArray [

	anArray do: [:format |
		(format format value = VkFormat VK_FORMAT_B8G8R8_SRGB and: [
			format colorSpace value = VkColorSpaceKHR VK_COLOR_SPACE_SRGB_NONLINEAR_KHR]) ifTrue: [^ format]].
	^ anArray at: 1
]

{ #category : #'as yet unclassified' }
VkExample >> cleanup [

	SBToggledCode
		comment: ''
		active: 0
		do: {
			[
				debugMessenger ifNotNil: [
					self destroyDebugUtilsMessengerEXT: instance with: debugMessenger with: nil]]
		}.
	swapChainImageViews do: [:view |
		VkAPI new vkDestroyImageView: device with: view with: nil].
	VkAPI new vkDestroySwapchainKHR: device with: swapChain with: nil.
	VkAPI new vkDestroyDevice: device with: nil.
	VkAPI new vkDestroySurfaceKHR: instance with: surface with: nil.
	VkAPI new vkDestroyInstance: instance with: nil.
	GLFW destroyWindow: window.
	GLFW terminate
]

{ #category : #'as yet unclassified' }
VkExample >> createDebugMessenger [

	debugCallback ifNil: [
		debugCallback := FFICallback
			signature: '<callback: VkBool32 (*)(VkDebugUtilsMessageSeverityFlagsEXT VkDebugUtilsMessageTypeFlagsEXT VkDebugUtilsMessengerCallbackDataEXT* void*)>'
			block: [:messageSeverity :messageTypes :pCallbackData :pUserData |
				Transcript
					nextPutAll: (self messageSeverityToString: messageSeverity);
					nextPutAll: ': ';
					nextPutAll: pCallbackData pMessage;
					cr;
					flush.
				0]].
	^ VkDebugUtilsMessengerCreateInfoEXT externalNew
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
VkExample >> createImageViews [

	swapChainImageViews := Array new: swapChainImages size.
	swapChainImages withIndexDo: [:image :index |
		self
			passArrayOfPointers: 1
			of: VkImageView
			to: [:pointer :array |
				VkImageViewCreateInfo externalNewDo: [:createInfo |
					createInfo
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
					VkAPI new vkCreateImageView: device with: createInfo with: nil with: pointer.
					swapChainImageViews at: index put: (array at: 1)]]]
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
	
	"instancePtr := ExternalData fromHandle: (ExternalAddress allocate: VkInstance byteSize) type: VkInstance externalType.
	self checkError: (VkAPI new vkCreateInstance: createInfo with: nil with: (VkInstance fromHandle: instancePtr getHandle)).
	instance := at: 1."
	self passArrayOfPointers: 1 of: VkInstance to: [:pointer :array |
		self checkError: (VkAPI new vkCreateInstance: createInfo with: nil with: pointer).
		instance := array at: 1]
]

{ #category : #'as yet unclassified' }
VkExample >> createLogicalDevice [

	| queueCreateInfo queueCount queues createInfo graphicsQueueIndex extensionsAndCount |
	queueCount := IntegerArray new: 1.
	VkAPI new vkGetPhysicalDeviceQueueFamilyProperties: physicalDevice with: queueCount with: nil.
	self assert: queueCount first = 1.
	
	queues := VkQueueFamilyProperties externalNew.
	
	self checkError: (VkAPI new vkGetPhysicalDeviceQueueFamilyProperties: physicalDevice with: queueCount with: queues).
	self assert: (queues queueFlags value bitAnd: VkQueueFlags VK_QUEUE_GRAPHICS_BIT) ~= 0.
	graphicsQueueIndex := 0.
	
	self passArrayOfPointers: 1 of: VkBool32 to: [:pointer :array |
		VkAPI new
			vkGetPhysicalDeviceSurfaceSupportKHR: physicalDevice
			with: graphicsQueueIndex
			with: surface
			with: pointer.
		self assert: (array at: 1) = (VkBool32 on: 1)].
	
	queueCreateInfo := VkDeviceQueueCreateInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO;
		queueFamilyIndex: graphicsQueueIndex;
		queueCount: 1.
	
	extensionsAndCount := self getDeviceExtensionNamesAndCount.
	createInfo := VkDeviceCreateInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO;
		pQueueCreateInfos: queueCreateInfo;
		queueCreateInfoCount: 1;
		pEnabledFeatures: VkPhysicalDeviceFeatures externalNew zeroAllFields;
		ppEnabledExtensionNames: (extensionsAndCount first  asType: ExternalType string);
		enabledExtensionCount: extensionsAndCount second;
		enabledLayerCount: 0.
	
	self passArrayOfPointers: 1 of: VkDevice to: [:pointer :array |
		self checkError: (VkAPI new vkCreateDevice: physicalDevice with: createInfo with: nil with: pointer).
		device := array at: 1].
	
	self passArrayOfPointers: 1 of: VkQueue to: [:pointer :array |
		VkAPI new vkGetDeviceQueue: device with: graphicsQueueIndex with: 0 with: pointer.
		graphicsQueue := array at: 1]
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

	| capabilities formatCount formats surfaceFormat presentMode presentModes presentModeCount swapExtent imageCount createInfo ptr imageCountRet |
	capabilities := VkSurfaceCapabilitiesKHR externalNew.
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
			VkAPI new vkCreateSwapchainKHR: device with: createInfo with: nil with: pointer.
			swapChain := array at: 1].
	
	imageCountRet := IntegerArray new: 1.
	VkAPI new vkGetSwapchainImagesKHR: device with: swapChain with: imageCountRet with: nil.
	self
		passArrayOfPointers: imageCountRet first
		of: VkImage
		to: [:pointer :array |
			VkAPI new vkGetSwapchainImagesKHR: device with: swapChain with: imageCountRet with: pointer.
			swapChainImages := array]
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
VkExample >> initVulkan [

	self createInstance.
	self setupDebugMessenger.
	self createSurface.
	self pickPhysicalDevice.
	self createLogicalDevice.
	self createSwapChain.
	self createImageViews
]

{ #category : #'as yet unclassified' }
VkExample >> initWindow [

	GLFW init.
	GLFW windowHint: GLFW GLFW_CLIENT_API with: GLFW GLFW_NO_API.
	window := GLFW createWindowWidth: 800 height: 600 title: 'Vulkan' monitor: nil share: nil
]

{ #category : #'as yet unclassified' }
VkExample >> initialize [

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

	[(GLFW windowShouldClose: window) ~= 0] whileFalse: [GLFW pollEvents]
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
				properties := VkPhysicalDeviceProperties externalNew.
				VkAPI new vkGetPhysicalDeviceProperties: device with: properties]
		}
]

{ #category : #'as yet unclassified' }
VkExample >> setupDebugMessenger [

	| createInfo |
	createInfo := self createDebugMessenger.
	debugMessenger := VkDebugUtilsMessengerEXT externalNew.
	self checkError: (self createDebugUtilsMessengerEXT: instance with: createInfo with: nil with: debugMessenger).
	createInfo free
]

{ #category : #'as yet unclassified' }
VkExample >> vkMakeVersionMajor: major minor: minor patch: patch [

	SBExample self: [VkExample basicNew] args: [{1. 0. 0}] label: 'example'.
	^ (major << 22 bitOr: minor << 12) bitOr: patch
]
