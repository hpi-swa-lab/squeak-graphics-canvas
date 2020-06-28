Class {
	#name : #VkSemaphoreWaitInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSemaphoreWaitInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkSemaphoreWaitFlags')
		(semaphoreCount 'uint32_t')
		(pSemaphores 'VkSemaphore*')
		(pValues 'uint64_t*')
	)
]
