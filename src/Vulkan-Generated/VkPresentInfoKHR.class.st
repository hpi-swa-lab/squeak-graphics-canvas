Class {
	#name : #VkPresentInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPresentInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(waitSemaphoreCount 'uint32_t')
		(pWaitSemaphores 'VkSemaphore*')
		(swapchainCount 'uint32_t')
		(pSwapchains 'VkSwapchainKHR*')
		(pImageIndices 'uint32_t*')
		(pResults 'VkResult*')
	)
]
