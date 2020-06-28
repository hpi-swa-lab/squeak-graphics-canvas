Class {
	#name : #VkWriteDescriptorSetInlineUniformBlockEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkWriteDescriptorSetInlineUniformBlockEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(dataSize 'uint32_t')
		(pData 'void*')
	)
]
