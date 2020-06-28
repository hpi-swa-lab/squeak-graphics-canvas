Class {
	#name : #VkPhysicalDeviceInlineUniformBlockPropertiesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceInlineUniformBlockPropertiesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(maxInlineUniformBlockSize 'uint32_t')
		(maxPerStageDescriptorInlineUniformBlocks 'uint32_t')
		(maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks 'uint32_t')
		(maxDescriptorSetInlineUniformBlocks 'uint32_t')
		(maxDescriptorSetUpdateAfterBindInlineUniformBlocks 'uint32_t')
	)
]