as yet unclassified
pickPhysicalDevice

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