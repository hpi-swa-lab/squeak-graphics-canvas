Class {
	#name : #VkDisplayProperties2KHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDisplayProperties2KHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(displayProperties 'VkDisplayPropertiesKHR')
	)
]
