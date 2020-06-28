Class {
	#name : #VkBaseOutStructure,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkBaseOutStructure class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'VkBaseOutStructure*')
	)
]
