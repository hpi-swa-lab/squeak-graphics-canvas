Class {
	#name : #VkTimelineSemaphoreSubmitInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkTimelineSemaphoreSubmitInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(waitSemaphoreValueCount 'uint32_t')
		(pWaitSemaphoreValues 'uint64_t*')
		(signalSemaphoreValueCount 'uint32_t')
		(pSignalSemaphoreValues 'uint64_t*')
	)
]
