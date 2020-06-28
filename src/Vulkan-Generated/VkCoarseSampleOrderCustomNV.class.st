Class {
	#name : #VkCoarseSampleOrderCustomNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkCoarseSampleOrderCustomNV class >> fields [

	^ #(
		(shadingRate 'VkShadingRatePaletteEntryNV')
		(sampleCount 'uint32_t')
		(sampleLocationCount 'uint32_t')
		(pSampleLocations 'VkCoarseSampleLocationNV*')
	)
]
