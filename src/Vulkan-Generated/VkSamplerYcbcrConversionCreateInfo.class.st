Class {
	#name : #VkSamplerYcbcrConversionCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSamplerYcbcrConversionCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(format 'VkFormat')
		(ycbcrModel 'VkSamplerYcbcrModelConversion')
		(ycbcrRange 'VkSamplerYcbcrRange')
		(components 'VkComponentMapping')
		(xChromaOffset 'VkChromaLocation')
		(yChromaOffset 'VkChromaLocation')
		(chromaFilter 'VkFilter')
		(forceExplicitReconstruction 'VkBool32')
	)
]
