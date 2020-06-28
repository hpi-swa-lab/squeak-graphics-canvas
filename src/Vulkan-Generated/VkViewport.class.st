Class {
	#name : #VkViewport,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkViewport class >> fields [

	^ #(
		(x 'float')
		(y 'float')
		(width 'float')
		(height 'float')
		(minDepth 'float')
		(maxDepth 'float')
	)
]
