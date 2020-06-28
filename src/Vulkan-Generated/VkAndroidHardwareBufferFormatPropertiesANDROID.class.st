Class {
	#name : #VkAndroidHardwareBufferFormatPropertiesANDROID,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAndroidHardwareBufferFormatPropertiesANDROID class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(format 'VkFormat')
		(externalFormat 'uint64_t')
		(formatFeatures 'VkFormatFeatureFlags')
		(samplerYcbcrConversionComponents 'VkComponentMapping')
		(suggestedYcbcrModel 'VkSamplerYcbcrModelConversion')
		(suggestedYcbcrRange 'VkSamplerYcbcrRange')
		(suggestedXChromaOffset 'VkChromaLocation')
		(suggestedYChromaOffset 'VkChromaLocation')
	)
]
