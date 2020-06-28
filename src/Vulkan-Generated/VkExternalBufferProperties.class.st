Class {
	#name : #VkExternalBufferProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExternalBufferProperties class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(externalMemoryProperties 'VkExternalMemoryProperties')
	)
]
