Class {
	#name : #VkExtent2D,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExtent2D class >> fields [

	^ #(
		(width 'uint32_t')
		(height 'uint32_t')
	)
]
