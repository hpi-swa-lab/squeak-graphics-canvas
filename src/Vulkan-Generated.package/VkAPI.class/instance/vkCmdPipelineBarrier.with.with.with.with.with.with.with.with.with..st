as yet unclassified
vkCmdPipelineBarrier: commandBuffer with: srcStageMask with: dstStageMask with: dependencyFlags with: memoryBarrierCount with: pMemoryBarriers with: bufferMemoryBarrierCount with: pBufferMemoryBarriers with: imageMemoryBarrierCount with: pImageMemoryBarriers

	<apicall: void 'vkCmdPipelineBarrier' (VkCommandBuffer VkPipelineStageFlags VkPipelineStageFlags VkDependencyFlags uint32_t VkMemoryBarrier* uint32_t VkBufferMemoryBarrier* uint32_t VkImageMemoryBarrier*)>
	^ self externalCallFailed