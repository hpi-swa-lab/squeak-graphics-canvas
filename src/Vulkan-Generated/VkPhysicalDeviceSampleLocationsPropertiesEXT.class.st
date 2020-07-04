Class {
	#name : #VkPhysicalDeviceSampleLocationsPropertiesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceSampleLocationsPropertiesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(sampleLocationSampleCounts 'VkSampleCountFlags')
		(maxSampleLocationGridSize 'VkExtent2D')
		(sampleLocationCoordinateRange 'float[2]')
		(sampleLocationSubPixelBits 'uint32_t')
		(variableSampleLocations 'VkBool32')
	)
]
