Class {
	#name : #VkImportMemoryFdInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImportMemoryFdInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(handleType 'VkExternalMemoryHandleTypeFlags')
		(fd 'int')
	)
]
