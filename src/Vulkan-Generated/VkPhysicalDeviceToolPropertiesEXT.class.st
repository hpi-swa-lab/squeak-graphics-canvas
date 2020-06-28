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
		(name 'char')
		(version 'char')
		(purposes 'VkToolPurposeFlagsEXT')
		(description 'char')
		(layer 'char')
	)
]
