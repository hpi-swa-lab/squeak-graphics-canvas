Class {
	#name : #VkSubpassBeginInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSubpassBeginInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(contents 'VkSubpassContents')
	)
]
