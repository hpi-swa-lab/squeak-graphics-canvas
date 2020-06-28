as yet unclassified
fields

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(deviceUUID 'uint8_t')
		(driverUUID 'uint8_t')
		(deviceLUID 'uint8_t')
		(deviceNodeMask 'uint32_t')
		(deviceLUIDValid 'VkBool32')
		(subgroupSize 'uint32_t')
		(subgroupSupportedStages 'VkShaderStageFlags')
		(subgroupSupportedOperations 'VkSubgroupFeatureFlags')
		(subgroupQuadOperationsInAllStages 'VkBool32')
		(pointClippingBehavior 'VkPointClippingBehavior')
		(maxMultiviewViewCount 'uint32_t')
		(maxMultiviewInstanceIndex 'uint32_t')
		(protectedNoFault 'VkBool32')
		(maxPerSetDescriptors 'uint32_t')
		(maxMemoryAllocationSize 'VkDeviceSize')
	)