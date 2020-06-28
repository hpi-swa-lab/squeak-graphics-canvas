Class {
	#name : #VkAttachmentReferenceStencilLayout,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAttachmentReferenceStencilLayout class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(stencilLayout 'VkImageLayout')
	)
]
