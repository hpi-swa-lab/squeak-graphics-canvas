Class {
	#name : #VkSurfaceProtectedCapabilitiesKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSurfaceProtectedCapabilitiesKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(supportsProtected 'VkBool32')
	)
]
