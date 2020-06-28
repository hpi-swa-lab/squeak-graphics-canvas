Class {
	#name : #VkPhysicalDeviceCustomBorderColorPropertiesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceCustomBorderColorPropertiesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(maxCustomBorderColorSamplers 'uint32_t')
	)
]
