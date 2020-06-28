Class {
	#name : #VkExtent3D,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExtent3D class >> fields [

	^ #(
		(width 'uint32_t')
		(height 'uint32_t')
		(depth 'uint32_t')
	)
]
