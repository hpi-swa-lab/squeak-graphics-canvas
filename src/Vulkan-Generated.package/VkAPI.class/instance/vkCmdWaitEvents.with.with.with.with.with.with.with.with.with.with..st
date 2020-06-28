as yet unclassified
vkCmdWaitEvents: commandBuffer with: eventCount with: pEvents with: srcStageMask with: dstStageMask with: memoryBarrierCount with: pMemoryBarriers with: bufferMemoryBarrierCount with: pBufferMemoryBarriers with: imageMemoryBarrierCount with: pImageMemoryBarriers

	<apicall: void 'vkCmdWaitEvents' (VkCommandBuffer uint32_t VkEvent* VkPipelineStageFlags VkPipelineStageFlags uint32_t VkMemoryBarrier* uint32_t VkBufferMemoryBarrier* uint32_t VkImageMemoryBarrier*)>
	^ self externalCallFailed