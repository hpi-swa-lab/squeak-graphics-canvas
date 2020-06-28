Class {
	#name : #VkSampleLocationsInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSampleLocationsInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(sampleLocationsPerPixel 'VkSampleCountFlags')
		(sampleLocationGridSize 'VkExtent2D')
		(sampleLocationsCount 'uint32_t')
		(pSampleLocations 'VkSampleLocationEXT*')
	)
]
