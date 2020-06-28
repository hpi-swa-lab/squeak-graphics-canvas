Class {
	#name : #VkImageFormatProperties2,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImageFormatProperties2 class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(imageFormatProperties 'VkImageFormatProperties')
	)
]
