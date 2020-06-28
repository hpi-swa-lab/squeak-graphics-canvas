Class {
	#name : #VkPhysicalDevicePresentationPropertiesANDROID,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDevicePresentationPropertiesANDROID class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(sharedImage 'VkBool32')
	)
]
