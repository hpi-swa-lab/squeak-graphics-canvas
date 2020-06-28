Class {
	#name : #VkAabbPositionsKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAabbPositionsKHR class >> fields [

	^ #(
		(minX 'float')
		(minY 'float')
		(minZ 'float')
		(maxX 'float')
		(maxY 'float')
		(maxZ 'float')
	)
]
