Class {
	#name : #VkFramebufferAttachmentImageInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkFramebufferAttachmentImageInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkImageCreateFlags')
		(usage 'VkImageUsageFlags')
		(width 'uint32_t')
		(height 'uint32_t')
		(layerCount 'uint32_t')
		(viewFormatCount 'uint32_t')
		(pViewFormats 'VkFormat*')
	)
]
