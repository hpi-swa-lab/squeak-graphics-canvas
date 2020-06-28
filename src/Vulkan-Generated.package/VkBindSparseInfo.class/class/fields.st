as yet unclassified
fields

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(waitSemaphoreCount 'uint32_t')
		(pWaitSemaphores 'VkSemaphore*')
		(bufferBindCount 'uint32_t')
		(pBufferBinds 'VkSparseBufferMemoryBindInfo*')
		(imageOpaqueBindCount 'uint32_t')
		(pImageOpaqueBinds 'VkSparseImageOpaqueMemoryBindInfo*')
		(imageBindCount 'uint32_t')
		(pImageBinds 'VkSparseImageMemoryBindInfo*')
		(signalSemaphoreCount 'uint32_t')
		(pSignalSemaphores 'VkSemaphore*')
	)