Class {
	#name : #VkSemaphoreGetWin32HandleInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSemaphoreGetWin32HandleInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(semaphore 'VkSemaphore')
		(handleType 'VkExternalSemaphoreHandleTypeFlags')
	)
]
