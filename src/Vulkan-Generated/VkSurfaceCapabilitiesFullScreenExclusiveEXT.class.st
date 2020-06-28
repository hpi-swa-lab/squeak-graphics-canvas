Class {
	#name : #VkSurfaceCapabilitiesFullScreenExclusiveEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSurfaceCapabilitiesFullScreenExclusiveEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(fullScreenExclusiveSupported 'VkBool32')
	)
]
