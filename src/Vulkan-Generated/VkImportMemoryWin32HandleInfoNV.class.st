Class {
	#name : #VkImportMemoryWin32HandleInfoNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImportMemoryWin32HandleInfoNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(handleType 'VkExternalMemoryHandleTypeFlagsNV')
		(handle 'void')
	)
]
