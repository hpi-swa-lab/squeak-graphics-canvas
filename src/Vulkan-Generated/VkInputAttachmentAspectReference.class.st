Class {
	#name : #VkInputAttachmentAspectReference,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkInputAttachmentAspectReference class >> fields [

	^ #(
		(subpass 'uint32_t')
		(inputAttachmentIndex 'uint32_t')
		(aspectMask 'VkImageAspectFlags')
	)
]
