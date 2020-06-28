Class {
	#name : #VkPhysicalDeviceCornerSampledImageFeaturesNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceCornerSampledImageFeaturesNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(cornerSampledImage 'VkBool32')
	)
]
