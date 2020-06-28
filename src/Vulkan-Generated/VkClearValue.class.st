Class {
	#name : #VkClearValue,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkClearValue class >> fields [

	^ #(
		(color 'VkClearColorValue')
		(depthStencil 'VkClearDepthStencilValue')
	)
]
