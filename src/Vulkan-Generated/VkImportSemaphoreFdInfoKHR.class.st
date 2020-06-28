Class {
	#name : #VkImportSemaphoreFdInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImportSemaphoreFdInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(semaphore 'VkSemaphore')
		(flags 'VkSemaphoreImportFlags')
		(handleType 'VkExternalSemaphoreHandleTypeFlags')
		(fd 'int')
	)
]
