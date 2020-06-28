Class {
	#name : #VkImageViewASTCDecodeModeEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImageViewASTCDecodeModeEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(decodeMode 'VkFormat')
	)
]
