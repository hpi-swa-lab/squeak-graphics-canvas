Class {
	#name : #VkPhysicalDeviceToolPropertiesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceToolPropertiesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(name 'char[256]')
		(version 'char[256]')
		(purposes 'VkToolPurposeFlagsEXT')
		(description 'char[256]')
		(layer 'char[256]')
	)
]
