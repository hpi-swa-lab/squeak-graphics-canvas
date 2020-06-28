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
		'swapChain'
	],
	#category : #'Vulkan-Examples'
}

{ #category : #'as yet unclassified' }
VkExample >> checkError: aResult [

	aResult ~= VkResult VK_SUCCESS value ifTrue: [self error: 'operation failed']
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
VkExample >> createInstance [

	| appInfo createInfo applicationName engineName layerNames debugUtilsMessengerCreateInfo extensionsAndCount instancePtr |
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
	
	instancePtr := ExternalData fromHandle: (ExternalAddress allocate: 8) type: ExternalType intptr_t asPointerType.
	self checkError: (VkAPI new vkCreateInstance: createInfo with: nil with: instancePtr).
	instance := VkInstance on: (instancePtr at: 1)
]

{ #category : #'as yet unclassified' }
VkExample >> createLogicalDevice [

	| queueCreateInfo queueCount queues devicePtr createInfo graphicsQueueIndex queuePtr presentSupport extensionsAndCount |
	queueCount := IntegerArray new: 1.
	VkAPI new vkGetPhysicalDeviceQueueFamilyProperties: physicalDevice with: queueCount with: nil.
	self assert: queueCount first = 1.
	
	queues := VkQueueFamilyProperties externalNew.
	
	self checkError: (VkAPI new vkGetPhysicalDeviceQueueFamilyProperties: physicalDevice with: queueCount with: queues).
	self assert: (queues queueFlags value bitAnd: VkQueueFlags VK_QUEUE_GRAPHICS_BIT) ~= 0.
	graphicsQueueIndex := 0.
	presentSupport := IntegerArray new: 1.
	VkAPI new
		vkGetPhysicalDeviceSurfaceSupportKHR: physicalDevice
		with: graphicsQueueIndex
		with: surface
		with: presentSupport.
	self assert: presentSupport first = 1.
	
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
	
	devicePtr := ExternalData fromHandle: (ExternalAddress allocate: 8) type: ExternalType intptr_t asPointerType.
	self checkError: (VkAPI new vkCreateDevice: physicalDevice with: createInfo with: nil with: devicePtr).
	device := VkDevice on: (devicePtr at: 1).
	
	queuePtr := ExternalData fromHandle: (ExternalAddress allocate: 8) type: ExternalType intptr_t asPointerType.
	VkAPI new vkGetDeviceQueue: device with: graphicsQueueIndex with: 0 with: queuePtr.
	graphicsQueue := VkQueue on: (queuePtr at: 1)
]

{ #category : #'as yet unclassified' }
VkExample >> createSurface [

	| ptr |
	ptr := ExternalData fromHandle: (ExternalAddress allocate: 8) type: ExternalType intptr_t asPointerType.
	GLFW createWindowSurface: instance with: window with: nil with: ptr.
	surface := VkSurfaceKHR on: (ptr at: 1)
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
	self createLogicalDevice
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
VkExample >> pickPhysicalDevice [

	| deviceCount devices properties |
	deviceCount := IntegerArray with: 0.
	self checkError: (VkAPI new vkEnumeratePhysicalDevices: instance with: deviceCount with: nil).
	deviceCount first < 1 ifTrue: [self error: 'no devices with Vulkan support found'].
	
	devices := ExternalData
		fromHandle: (ExternalAddress allocate: VkPhysicalDevice byteSize * deviceCount first)
		type: ExternalType intptr_t asPointerType.
	self checkError: (VkAPI new vkEnumeratePhysicalDevices: instance with: deviceCount with: devices).
	physicalDevice := VkPhysicalDevice on: (devices getHandle unsignedLongLongAt: 1).
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
