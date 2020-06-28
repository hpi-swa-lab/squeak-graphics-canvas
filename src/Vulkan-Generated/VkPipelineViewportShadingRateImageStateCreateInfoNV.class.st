Class {
	#name : #VkPipelineViewportShadingRateImageStateCreateInfoNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineViewportShadingRateImageStateCreateInfoNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(shadingRateImageEnable 'VkBool32')
		(viewportCount 'uint32_t')
		(pShadingRatePalettes 'VkShadingRatePaletteNV*')
	)
]
