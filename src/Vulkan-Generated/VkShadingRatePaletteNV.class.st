Class {
	#name : #VkShadingRatePaletteNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkShadingRatePaletteNV class >> fields [

	^ #(
		(shadingRatePaletteEntryCount 'uint32_t')
		(pShadingRatePaletteEntries 'VkShadingRatePaletteEntryNV*')
	)
]
