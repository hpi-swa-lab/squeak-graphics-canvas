Class {
	#name : #VkBindImageMemorySwapchainInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkBindImageMemorySwapchainInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(swapchain 'VkSwapchainKHR')
		(imageIndex 'uint32_t')
	)
]
