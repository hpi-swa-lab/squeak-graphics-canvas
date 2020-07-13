Class {
	#name : #VkPhysicalDeviceVulkan11Properties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceVulkan11Properties class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(deviceUUID 'uint8_t[16]')
		(driverUUID 'uint8_t[16]')
		(deviceLUID 'uint8_t[8]')
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
]