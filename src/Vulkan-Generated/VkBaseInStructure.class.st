Class {
	#name : #VkBaseInStructure,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkBaseInStructure class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'VkBaseInStructure*')
	)
]
