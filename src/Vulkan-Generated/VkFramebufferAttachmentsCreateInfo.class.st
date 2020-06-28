Class {
	#name : #VkFramebufferAttachmentsCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkFramebufferAttachmentsCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(attachmentImageInfoCount 'uint32_t')
		(pAttachmentImageInfos 'VkFramebufferAttachmentImageInfo*')
	)
]
