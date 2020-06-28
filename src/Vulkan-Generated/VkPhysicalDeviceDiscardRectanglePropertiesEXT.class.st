Class {
	#name : #VkPhysicalDeviceDiscardRectanglePropertiesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceDiscardRectanglePropertiesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(maxDiscardRectangles 'uint32_t')
	)
]
