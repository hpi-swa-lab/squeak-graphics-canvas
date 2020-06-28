Class {
	#name : #VkSurfaceCapabilities2KHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSurfaceCapabilities2KHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(surfaceCapabilities 'VkSurfaceCapabilitiesKHR')
	)
]
