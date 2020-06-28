Class {
	#name : #VkDisplayPlaneProperties2KHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDisplayPlaneProperties2KHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(displayPlaneProperties 'VkDisplayPlanePropertiesKHR')
	)
]
