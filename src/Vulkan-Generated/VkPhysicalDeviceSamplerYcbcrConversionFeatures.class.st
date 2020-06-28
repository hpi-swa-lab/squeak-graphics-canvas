Class {
	#name : #VkPhysicalDeviceSamplerYcbcrConversionFeatures,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceSamplerYcbcrConversionFeatures class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(samplerYcbcrConversion 'VkBool32')
	)
]
