as yet unclassified
fields

	^ #(
		(apiVersion 'uint32_t')
		(driverVersion 'uint32_t')
		(vendorID 'uint32_t')
		(deviceID 'uint32_t')
		(deviceType 'VkPhysicalDeviceType')
		(deviceName 'char')
		(pipelineCacheUUID 'uint8_t')
		(limits 'VkPhysicalDeviceLimits')
		(sparseProperties 'VkPhysicalDeviceSparseProperties')
	)