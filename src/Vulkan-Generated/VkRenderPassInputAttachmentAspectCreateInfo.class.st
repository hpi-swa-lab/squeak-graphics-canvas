Class {
	#name : #VkRenderPassInputAttachmentAspectCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkRenderPassInputAttachmentAspectCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(aspectReferenceCount 'uint32_t')
		(pAspectReferences 'VkInputAttachmentAspectReference*')
	)
]
