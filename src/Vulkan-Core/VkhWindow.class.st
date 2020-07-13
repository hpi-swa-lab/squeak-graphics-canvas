Class {
	#name : #VkhWindow,
	#superclass : #Object,
	#instVars : [
		'instance',
		'debugMessenger',
		'window',
		'physicalDevice',
		'device',
		'surface',
		'graphicsQueue',
		'swapchain'
	],
	#category : #'Vulkan-Core'
}

{ #category : #cleanup }
VkhWindow >> cleanup [

	VkAPI new vkDestroyDevice: device with: nil.
	
	debugMessenger ifNotNil: [
		self destroyDebugUtilsMessengerEXT: instance with: debugMessenger with: nil].
	
	VkAPI new vkDestroySurfaceKHR: instance with: surface with: nil.
	VkAPI new vkDestroyInstance: instance with: nil.
	
	GLFW destroyWindow: window.
	GLFW terminate
]

{ #category : #'as yet unclassified' }
VkhWindow >> createDebugUtilsMessengerEXT: instance with: createInfo with: pAllocator with: pDebugMessenger [

	| funcAddr method |
	VkAPI new vkGetInstanceProcAddr: instance with: 'vkEnumeratePhysicalDevices'.
	funcAddr := VkAPI new vkGetInstanceProcAddr: instance with: 'vkCreateDebugUtilsMessengerEXT'.
	funcAddr isNull ifTrue: [self error: 'extension method could not be loaded'].
	
	method := VkAPI >> #vkCreateDebugUtilsMessengerEXT:with:with:with:.
	(method literalAt: 1) setHandle: funcAddr getHandle.
	^ VkAPI new vkCreateDebugUtilsMessengerEXT: instance with: createInfo with: pAllocator with: pDebugMessenger
]

{ #category : #'as yet unclassified' }
VkhWindow >> createInstance [

	| appInfo createInfo applicationName engineName extensionsAndCount |
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
	
	createInfo := VkInstanceCreateInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO;
		pApplicationInfo: appInfo;
		enabledExtensionCount: extensionsAndCount second;
		ppEnabledExtensionNames: (extensionsAndCount first asType: ExternalType string).
	
	self enableValidationLayer
		ifTrue: [ | debugUtilsMessengerCreateInfo layerNames |
			layerNames := self layerNames.
			debugUtilsMessengerCreateInfo := self createDebugMessenger.
			createInfo
				enabledLayerCount: 1;
				ppEnabledLayerNames: layerNames;
				pNext: (debugUtilsMessengerCreateInfo asExternalData asType: ExternalType void asPointerType)]
		ifFalse: [
			createInfo enabledLayerCount: 0].
	
	self
		passArrayOfPointers: 1
		of: VkInstance
		to: [:pointer :array |
			self checkError: (VkAPI new vkCreateInstance: createInfo with: nil with: pointer).
			instance := array at: 1]
]

{ #category : #'as yet unclassified' }
VkhWindow >> createLogicalDevice [

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
		pEnabledFeatures: (VkPhysicalDeviceFeatures externalNew
			zeroAllFields;
			samplerAnisotropy: (VkBool32 on: 1)
			yourself);
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
VkhWindow >> createSurface [

	| ptr |
	ptr := ExternalData fromHandle: (ExternalAddress allocate: 8) type: ExternalType intptr_t asPointerType.
	GLFW createWindowSurface: instance with: window with: nil with: ptr.
	surface := VkSurfaceKHR on: (ptr at: 1)
]

{ #category : #accessing }
VkhWindow >> device [

	^ device
]

{ #category : #'as yet unclassified' }
VkhWindow >> getDeviceExtensionNamesAndCount [

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
VkhWindow >> getExtensionNamesAndCount [

	| names extensionCount glfwExtensions count |
	"SBExample self: [VkExample basicNew] args: [{}] label: 'example'."
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
VkhWindow >> initWindow [

	GLFW init.
	GLFW windowHint: GLFW GLFW_CLIENT_API with: GLFW GLFW_NO_API.
	window := GLFW createWindowWidth: 800 height: 600 title: 'Vulkan' monitor: nil share: nil.
	"GLFW
		setFramebufferSizeCallback: window
		with: ((framebufferSizeCallback := FFICallback signature: '<callback: void(*) (void* long long)>' block: [:win :x :y | framebufferWasResized := true]) thunk)"
]

{ #category : #'as yet unclassified' }
VkhWindow >> open [

	self initWindow.
	self createInstance.
	self setupDebugMessenger.
	self createSurface.
	self pickPhysicalDevice.
	self createLogicalDevice.
	
	swapchain := VkhSwapchain new createFor: self
]

{ #category : #accessing }
VkhWindow >> physicalDevice [

	^ physicalDevice
]

{ #category : #'as yet unclassified' }
VkhWindow >> pickPhysicalDevice [

	| deviceCount devices |
	deviceCount := IntegerArray with: 0.
	self checkError: (VkAPI new vkEnumeratePhysicalDevices: instance with: deviceCount with: nil).
	deviceCount first < 1 ifTrue: [self error: 'no devices with Vulkan support found'].
	
	devices := ExternalData
		fromHandle: (ExternalAddress allocate: VkPhysicalDevice byteSize * deviceCount first)
		type: ExternalType intptr_t asPointerType.
	self checkError: (VkAPI new vkEnumeratePhysicalDevices: instance with: deviceCount with: (VkPhysicalDevice fromHandle: devices getHandle)).
	physicalDevice := VkPhysicalDevice on: (devices at: 1)
]

{ #category : #'as yet unclassified' }
VkhWindow >> setupDebugMessenger [

	| createInfo |
	self enableValidationLayer ifFalse: [^ self].
	
	createInfo := self createDebugMessenger.
	debugMessenger := VkDebugUtilsMessengerEXT externalNew zeroAllFields.
	self
		passArrayOfPointers: 1
		of: VkDebugUtilsMessengerEXT
		to: [:pointer :array |
			self checkError: (self createDebugUtilsMessengerEXT: instance with: createInfo with: nil with: pointer).
			debugMessenger := array at: 1]
]

{ #category : #accessing }
VkhWindow >> surface [

	^ surface
]
