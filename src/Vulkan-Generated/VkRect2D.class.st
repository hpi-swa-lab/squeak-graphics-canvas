Class {
	#name : #VkRect2D,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkRect2D class >> fields [

	^ #(
		(offset 'VkOffset2D')
		(extent 'VkExtent2D')
	)
]
