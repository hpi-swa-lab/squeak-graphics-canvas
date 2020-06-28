as yet unclassified
createLogicalDevice

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