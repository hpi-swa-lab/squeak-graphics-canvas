Class {
	#name : #VkRectLayerKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkRectLayerKHR class >> fields [

	^ #(
		(offset 'VkOffset2D')
		(extent 'VkExtent2D')
		(layer 'uint32_t')
	)
]
