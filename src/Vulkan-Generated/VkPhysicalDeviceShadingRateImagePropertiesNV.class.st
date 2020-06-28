Class {
	#name : #VkPhysicalDeviceShadingRateImagePropertiesNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceShadingRateImagePropertiesNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(shadingRateTexelSize 'VkExtent2D')
		(shadingRatePaletteSize 'uint32_t')
		(shadingRateMaxCoarseSamples 'uint32_t')
	)
]
