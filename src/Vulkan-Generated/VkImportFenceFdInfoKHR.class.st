Class {
	#name : #VkImportFenceFdInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImportFenceFdInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(fence 'VkFence')
		(flags 'VkFenceImportFlags')
		(handleType 'VkExternalFenceHandleTypeFlags')
		(fd 'int')
	)
]
