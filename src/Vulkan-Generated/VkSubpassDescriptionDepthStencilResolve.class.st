Class {
	#name : #VkSubpassDescriptionDepthStencilResolve,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSubpassDescriptionDepthStencilResolve class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(depthResolveMode 'VkResolveModeFlags')
		(stencilResolveMode 'VkResolveModeFlags')
		(pDepthStencilResolveAttachment 'VkAttachmentReference2*')
	)
]
