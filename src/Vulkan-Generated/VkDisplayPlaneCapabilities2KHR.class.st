Class {
	#name : #VkDisplayPlaneCapabilities2KHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDisplayPlaneCapabilities2KHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(capabilities 'VkDisplayPlaneCapabilitiesKHR')
	)
]
