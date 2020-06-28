Class {
	#name : #VkAcquireNextImageInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAcquireNextImageInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(swapchain 'VkSwapchainKHR')
		(timeout 'uint64_t')
		(semaphore 'VkSemaphore')
		(fence 'VkFence')
		(deviceMask 'uint32_t')
	)
]
