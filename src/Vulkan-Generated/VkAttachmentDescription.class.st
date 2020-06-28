Class {
	#name : #VkAttachmentDescription,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAttachmentDescription class >> fields [

	^ #(
		(flags 'VkAttachmentDescriptionFlags')
		(format 'VkFormat')
		(samples 'VkSampleCountFlags')
		(loadOp 'VkAttachmentLoadOp')
		(storeOp 'VkAttachmentStoreOp')
		(stencilLoadOp 'VkAttachmentLoadOp')
		(stencilStoreOp 'VkAttachmentStoreOp')
		(initialLayout 'VkImageLayout')
		(finalLayout 'VkImageLayout')
	)
]
