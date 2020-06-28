Class {
	#name : #VkPhysicalDeviceSubgroupSizeControlPropertiesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceSubgroupSizeControlPropertiesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(minSubgroupSize 'uint32_t')
		(maxSubgroupSize 'uint32_t')
		(maxComputeWorkgroupSubgroups 'uint32_t')
		(requiredSubgroupSizeStages 'VkShaderStageFlags')
	)
]
