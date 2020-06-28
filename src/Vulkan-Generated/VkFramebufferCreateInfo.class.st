Class {
	#name : #VkFramebufferCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkFramebufferCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkFramebufferCreateFlags')
		(renderPass 'VkRenderPass')
		(attachmentCount 'uint32_t')
		(pAttachments 'VkImageView*')
		(width 'uint32_t')
		(height 'uint32_t')
		(layers 'uint32_t')
	)
]
