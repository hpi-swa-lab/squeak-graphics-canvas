Class {
	#name : #VkImportFenceWin32HandleInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImportFenceWin32HandleInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(fence 'VkFence')
		(flags 'VkFenceImportFlags')
		(handleType 'VkExternalFenceHandleTypeFlags')
		(handle 'void')
		(name 'void')
	)
]
