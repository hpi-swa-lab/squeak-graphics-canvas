Class {
	#name : #VkPerformanceStreamMarkerInfoINTEL,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPerformanceStreamMarkerInfoINTEL class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(marker 'uint32_t')
	)
]
