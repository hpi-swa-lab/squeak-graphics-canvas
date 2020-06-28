Class {
	#name : #VkAttachmentReference,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAttachmentReference class >> fields [

	^ #(
		(attachment 'uint32_t')
		(layout 'VkImageLayout')
	)
]
