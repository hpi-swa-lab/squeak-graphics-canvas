Class {
	#name : #VkConformanceVersion,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkConformanceVersion class >> fields [

	^ #(
		(major 'uint8_t')
		(minor 'uint8_t')
		(subminor 'uint8_t')
		(patch 'uint8_t')
	)
]
