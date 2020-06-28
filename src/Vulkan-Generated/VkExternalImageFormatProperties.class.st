Class {
	#name : #VkExternalImageFormatProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExternalImageFormatProperties class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(externalMemoryProperties 'VkExternalMemoryProperties')
	)
]
