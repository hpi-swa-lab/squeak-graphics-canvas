Class {
	#name : #VkPresentFrameTokenGGP,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPresentFrameTokenGGP class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(frameToken 'void')
	)
]
