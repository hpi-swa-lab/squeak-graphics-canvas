Class {
	#name : #VkImportMemoryHostPointerInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImportMemoryHostPointerInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(handleType 'VkExternalMemoryHandleTypeFlags')
		(pHostPointer 'void*')
	)
]
