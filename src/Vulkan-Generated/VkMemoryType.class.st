Class {
	#name : #VkMemoryType,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkMemoryType class >> fields [

	^ #(
		(propertyFlags 'VkMemoryPropertyFlags')
		(heapIndex 'uint32_t')
	)
]
