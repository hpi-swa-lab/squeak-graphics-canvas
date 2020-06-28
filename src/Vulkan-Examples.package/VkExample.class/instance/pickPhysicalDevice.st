as yet unclassified
pickPhysicalDevice

	| deviceCount devices |
	deviceCount := IntegerArray with: 0.
	self checkError: (VkAPI new vkEnumeratePhysicalDevices: instance with: deviceCount with: nil).
	(SBWatch report: deviceCount first for: 514726700) < 1 ifTrue: [self error: 'no devices with Vulkan support found'].
	
	"devices := ByteArray new: VkPhysicalDevice byteSize * deviceCount first."
	"devices := VkPhysicalDevice allocate: deviceCount first."
	devices := ExternalData fromHandle: (ExternalAddress allocate: VkPhysicalDevice byteSize * deviceCount first) type: ExternalType intptr_t asPointerType.
	self checkError: (VkAPI new vkEnumeratePhysicalDevices: instance with: deviceCount with: devices).
	SBWatch report: devices for: 922609914