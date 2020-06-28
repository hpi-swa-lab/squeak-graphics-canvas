Class {
	#name : #VkRenderPassAttachmentBeginInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkRenderPassAttachmentBeginInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(attachmentCount 'uint32_t')
		(pAttachments 'VkImageView*')
	)
]
