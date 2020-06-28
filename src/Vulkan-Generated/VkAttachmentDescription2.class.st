Class {
	#name : #VkAttachmentDescription2,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAttachmentDescription2 class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
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
