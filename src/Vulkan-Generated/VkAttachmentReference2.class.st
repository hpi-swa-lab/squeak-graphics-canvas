Class {
	#name : #VkAttachmentReference2,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAttachmentReference2 class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(attachment 'uint32_t')
		(layout 'VkImageLayout')
		(aspectMask 'VkImageAspectFlags')
	)
]
