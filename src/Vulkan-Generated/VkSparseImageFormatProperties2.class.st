Class {
	#name : #VkSparseImageFormatProperties2,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSparseImageFormatProperties2 class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(properties 'VkSparseImageFormatProperties')
	)
]
