Class {
	#name : #VkExportMemoryAllocateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExportMemoryAllocateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(handleTypes 'VkExternalMemoryHandleTypeFlags')
	)
]
