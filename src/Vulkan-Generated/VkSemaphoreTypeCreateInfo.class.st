Class {
	#name : #VkSemaphoreTypeCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSemaphoreTypeCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(semaphoreType 'VkSemaphoreType')
		(initialValue 'uint64_t')
	)
]
