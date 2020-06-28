Class {
	#name : #VkPhysicalDeviceLineRasterizationPropertiesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceLineRasterizationPropertiesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(lineSubPixelPrecisionBits 'uint32_t')
	)
]
