Class {
	#name : #VkAttachmentDescriptionStencilLayout,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAttachmentDescriptionStencilLayout class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(stencilInitialLayout 'VkImageLayout')
		(stencilFinalLayout 'VkImageLayout')
	)
]
