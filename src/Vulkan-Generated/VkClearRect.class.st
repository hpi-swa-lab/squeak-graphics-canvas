Class {
	#name : #VkClearRect,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkClearRect class >> fields [

	^ #(
		(rect 'VkRect2D')
		(baseArrayLayer 'uint32_t')
		(layerCount 'uint32_t')
	)
]
