Class {
	#name : #VkSemaphoreSignalInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSemaphoreSignalInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(semaphore 'VkSemaphore')
		(value 'uint64_t')
	)
]
