Class {
	#name : #VkPresentRegionKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPresentRegionKHR class >> fields [

	^ #(
		(rectangleCount 'uint32_t')
		(pRectangles 'VkRectLayerKHR*')
	)
]
