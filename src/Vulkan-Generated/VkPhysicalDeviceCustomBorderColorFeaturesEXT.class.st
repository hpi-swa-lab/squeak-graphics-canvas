Class {
	#name : #VkPhysicalDeviceCustomBorderColorFeaturesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceCustomBorderColorFeaturesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(customBorderColors 'VkBool32')
		(customBorderColorWithoutFormat 'VkBool32')
	)
]
