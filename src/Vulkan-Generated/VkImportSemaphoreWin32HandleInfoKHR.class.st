Class {
	#name : #VkImportSemaphoreWin32HandleInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImportSemaphoreWin32HandleInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(semaphore 'VkSemaphore')
		(flags 'VkSemaphoreImportFlags')
		(handleType 'VkExternalSemaphoreHandleTypeFlags')
		(handle 'void')
		(name 'void')
	)
]
