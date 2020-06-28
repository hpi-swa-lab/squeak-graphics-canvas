Class {
	#name : #VkPerformanceMarkerInfoINTEL,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPerformanceMarkerInfoINTEL class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(marker 'uint64_t')
	)
]
