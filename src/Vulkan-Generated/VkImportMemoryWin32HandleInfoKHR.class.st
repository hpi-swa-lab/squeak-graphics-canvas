Class {
	#name : #VkImportMemoryWin32HandleInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImportMemoryWin32HandleInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(handleType 'VkExternalMemoryHandleTypeFlags')
		(handle 'void')
		(name 'void')
	)
]
