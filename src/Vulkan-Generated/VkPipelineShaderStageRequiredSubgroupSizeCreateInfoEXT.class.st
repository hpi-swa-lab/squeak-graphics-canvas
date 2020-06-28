Class {
	#name : #VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(requiredSubgroupSize 'uint32_t')
	)
]
