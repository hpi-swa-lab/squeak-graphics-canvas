as yet unclassified
fields

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(waitSemaphoreCount 'uint32_t')
		(pWaitSemaphores 'VkSemaphore*')
		(pWaitDstStageMask 'VkPipelineStageFlags*')
		(commandBufferCount 'uint32_t')
		(pCommandBuffers 'VkCommandBuffer*')
		(signalSemaphoreCount 'uint32_t')
		(pSignalSemaphores 'VkSemaphore*')
	)