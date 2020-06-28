Class {
	#name : #VkPhysicalDeviceShadingRateImageFeaturesNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceShadingRateImageFeaturesNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(shadingRateImage 'VkBool32')
		(shadingRateCoarseSampleOrder 'VkBool32')
	)
]
