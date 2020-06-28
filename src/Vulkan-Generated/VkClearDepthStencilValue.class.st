Class {
	#name : #VkClearDepthStencilValue,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkClearDepthStencilValue class >> fields [

	^ #(
		(depth 'float')
		(stencil 'uint32_t')
	)
]
