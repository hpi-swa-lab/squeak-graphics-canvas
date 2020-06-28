Class {
	#name : #VkPhysicalDeviceSubgroupProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceSubgroupProperties class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(subgroupSize 'uint32_t')
		(supportedStages 'VkShaderStageFlags')
		(supportedOperations 'VkSubgroupFeatureFlags')
		(quadOperationsInAllStages 'VkBool32')
	)
]
