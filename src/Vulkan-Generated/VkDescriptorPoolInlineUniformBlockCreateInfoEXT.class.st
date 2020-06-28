Class {
	#name : #VkDescriptorPoolInlineUniformBlockCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDescriptorPoolInlineUniformBlockCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(maxInlineUniformBlockBindings 'uint32_t')
	)
]
