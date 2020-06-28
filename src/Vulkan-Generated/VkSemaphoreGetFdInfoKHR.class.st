Class {
	#name : #VkSemaphoreGetFdInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSemaphoreGetFdInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(semaphore 'VkSemaphore')
		(handleType 'VkExternalSemaphoreHandleTypeFlags')
	)
]
