Class {
	#name : #VkExternalMemoryBufferCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExternalMemoryBufferCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(handleTypes 'VkExternalMemoryHandleTypeFlags')
	)
]
