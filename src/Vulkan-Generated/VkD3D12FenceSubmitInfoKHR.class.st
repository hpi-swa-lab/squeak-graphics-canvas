Class {
	#name : #VkD3D12FenceSubmitInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkD3D12FenceSubmitInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(waitSemaphoreValuesCount 'uint32_t')
		(pWaitSemaphoreValues 'uint64_t*')
		(signalSemaphoreValuesCount 'uint32_t')
		(pSignalSemaphoreValues 'uint64_t*')
	)
]
