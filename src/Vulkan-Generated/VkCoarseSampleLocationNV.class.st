Class {
	#name : #VkCoarseSampleLocationNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkCoarseSampleLocationNV class >> fields [

	^ #(
		(pixelX 'uint32_t')
		(pixelY 'uint32_t')
		(sample 'uint32_t')
	)
]
