Class {
	#name : #VkDisplayModeProperties2KHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDisplayModeProperties2KHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(displayModeProperties 'VkDisplayModePropertiesKHR')
	)
]
