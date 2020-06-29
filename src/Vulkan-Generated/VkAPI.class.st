Class {
	#name : #VkAPI,
	#superclass : #ExternalLibrary,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAPI class >> moduleName [

	^ 'libvulkan'
]

{ #category : #'as yet unclassified' }
VkAPI >> vkAcquireFullScreenExclusiveModeEXT: device with: swapchain [

	<apicall: VkResult 'vkAcquireFullScreenExclusiveModeEXT' (VkDevice VkSwapchainKHR)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkAcquireImageANDROID: device with: image with: nativeFenceFd with: semaphore with: fence [

	<apicall: VkResult 'vkAcquireImageANDROID' (VkDevice VkImage int VkSemaphore VkFence)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkAcquireNextImage2KHR: device with: pAcquireInfo with: pImageIndex [

	<apicall: VkResult 'vkAcquireNextImage2KHR' (VkDevice VkAcquireNextImageInfoKHR* uint32_t*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkAcquireNextImageKHR: device with: swapchain with: timeout with: semaphore with: fence with: pImageIndex [

	<apicall: VkResult 'vkAcquireNextImageKHR' (VkDevice VkSwapchainKHR uint64_t VkSemaphore VkFence uint32_t*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkAcquirePerformanceConfigurationINTEL: device with: pAcquireInfo with: pConfiguration [

	<apicall: VkResult 'vkAcquirePerformanceConfigurationINTEL' (VkDevice VkPerformanceConfigurationAcquireInfoINTEL* VkPerformanceConfigurationINTEL*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkAcquireProfilingLockKHR: device with: pInfo [

	<apicall: VkResult 'vkAcquireProfilingLockKHR' (VkDevice VkAcquireProfilingLockInfoKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkAcquireXlibDisplayEXT: physicalDevice with: dpy with: display [

	<apicall: VkResult 'vkAcquireXlibDisplayEXT' (VkPhysicalDevice Display* VkDisplayKHR)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkAllocateCommandBuffers: device with: pAllocateInfo with: pCommandBuffers [

	<apicall: VkResult 'vkAllocateCommandBuffers' (VkDevice VkCommandBufferAllocateInfo* VkCommandBuffer*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkAllocateDescriptorSets: device with: pAllocateInfo with: pDescriptorSets [

	<apicall: VkResult 'vkAllocateDescriptorSets' (VkDevice VkDescriptorSetAllocateInfo* VkDescriptorSet*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkAllocateMemory: device with: pAllocateInfo with: pAllocator with: pMemory [

	<apicall: VkResult 'vkAllocateMemory' (VkDevice VkMemoryAllocateInfo* VkAllocationCallbacks* VkDeviceMemory*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkBeginCommandBuffer: commandBuffer with: pBeginInfo [

	<apicall: VkResult 'vkBeginCommandBuffer' (VkCommandBuffer VkCommandBufferBeginInfo*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkBindAccelerationStructureMemoryKHR: device with: bindInfoCount with: pBindInfos [

	<apicall: VkResult 'vkBindAccelerationStructureMemoryKHR' (VkDevice uint32_t VkBindAccelerationStructureMemoryInfoKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkBindAccelerationStructureMemoryNV [
	^ self vkBindAccelerationStructureMemoryKHR
]

{ #category : #'as yet unclassified' }
VkAPI >> vkBindBufferMemory2: device with: bindInfoCount with: pBindInfos [

	<apicall: VkResult 'vkBindBufferMemory2' (VkDevice uint32_t VkBindBufferMemoryInfo*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkBindBufferMemory2KHR [
	^ self vkBindBufferMemory2
]

{ #category : #'as yet unclassified' }
VkAPI >> vkBindBufferMemory: device with: buffer with: memory with: memoryOffset [

	<apicall: VkResult 'vkBindBufferMemory' (VkDevice VkBuffer VkDeviceMemory VkDeviceSize)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkBindImageMemory2: device with: bindInfoCount with: pBindInfos [

	<apicall: VkResult 'vkBindImageMemory2' (VkDevice uint32_t VkBindImageMemoryInfo*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkBindImageMemory2KHR [
	^ self vkBindImageMemory2
]

{ #category : #'as yet unclassified' }
VkAPI >> vkBindImageMemory: device with: image with: memory with: memoryOffset [

	<apicall: VkResult 'vkBindImageMemory' (VkDevice VkImage VkDeviceMemory VkDeviceSize)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkBuildAccelerationStructureKHR: device with: infoCount with: pInfos with: ppOffsetInfos [

	<apicall: VkResult 'vkBuildAccelerationStructureKHR' (VkDevice uint32_t VkAccelerationStructureBuildGeometryInfoKHR* VkAccelerationStructureBuildOffsetInfoKHR**)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdBeginConditionalRenderingEXT: commandBuffer with: pConditionalRenderingBegin [

	<apicall: void 'vkCmdBeginConditionalRenderingEXT' (VkCommandBuffer VkConditionalRenderingBeginInfoEXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdBeginDebugUtilsLabelEXT: commandBuffer with: pLabelInfo [

	<apicall: void 'vkCmdBeginDebugUtilsLabelEXT' (VkCommandBuffer VkDebugUtilsLabelEXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdBeginQuery: commandBuffer with: queryPool with: query with: flags [

	<apicall: void 'vkCmdBeginQuery' (VkCommandBuffer VkQueryPool uint32_t VkQueryControlFlags)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdBeginQueryIndexedEXT: commandBuffer with: queryPool with: query with: flags with: index [

	<apicall: void 'vkCmdBeginQueryIndexedEXT' (VkCommandBuffer VkQueryPool uint32_t VkQueryControlFlags uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdBeginRenderPass2: commandBuffer with: pRenderPassBegin with: pSubpassBeginInfo [

	<apicall: void 'vkCmdBeginRenderPass2' (VkCommandBuffer VkRenderPassBeginInfo* VkSubpassBeginInfo*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdBeginRenderPass2KHR [
	^ self vkCmdBeginRenderPass2
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdBeginRenderPass: commandBuffer with: pRenderPassBegin with: contents [

	<apicall: void 'vkCmdBeginRenderPass' (VkCommandBuffer VkRenderPassBeginInfo* VkSubpassContents)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdBeginTransformFeedbackEXT: commandBuffer with: firstCounterBuffer with: counterBufferCount with: pCounterBuffers with: pCounterBufferOffsets [

	<apicall: void 'vkCmdBeginTransformFeedbackEXT' (VkCommandBuffer uint32_t uint32_t VkBuffer* VkDeviceSize*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdBindDescriptorSets: commandBuffer with: pipelineBindPoint with: layout with: firstSet with: descriptorSetCount with: pDescriptorSets with: dynamicOffsetCount with: pDynamicOffsets [

	<apicall: void 'vkCmdBindDescriptorSets' (VkCommandBuffer VkPipelineBindPoint VkPipelineLayout uint32_t uint32_t VkDescriptorSet* uint32_t uint32_t*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdBindIndexBuffer: commandBuffer with: buffer with: offset with: indexType [

	<apicall: void 'vkCmdBindIndexBuffer' (VkCommandBuffer VkBuffer VkDeviceSize VkIndexType)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdBindPipeline: commandBuffer with: pipelineBindPoint with: pipeline [

	<apicall: void 'vkCmdBindPipeline' (VkCommandBuffer VkPipelineBindPoint VkPipeline)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdBindPipelineShaderGroupNV: commandBuffer with: pipelineBindPoint with: pipeline with: groupIndex [

	<apicall: void 'vkCmdBindPipelineShaderGroupNV' (VkCommandBuffer VkPipelineBindPoint VkPipeline uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdBindShadingRateImageNV: commandBuffer with: imageView with: imageLayout [

	<apicall: void 'vkCmdBindShadingRateImageNV' (VkCommandBuffer VkImageView VkImageLayout)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdBindTransformFeedbackBuffersEXT: commandBuffer with: firstBinding with: bindingCount with: pBuffers with: pOffsets with: pSizes [

	<apicall: void 'vkCmdBindTransformFeedbackBuffersEXT' (VkCommandBuffer uint32_t uint32_t VkBuffer* VkDeviceSize* VkDeviceSize*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdBindVertexBuffers2EXT: commandBuffer with: firstBinding with: bindingCount with: pBuffers with: pOffsets with: pSizes with: pStrides [

	<apicall: void 'vkCmdBindVertexBuffers2EXT' (VkCommandBuffer uint32_t uint32_t VkBuffer* VkDeviceSize* VkDeviceSize* VkDeviceSize*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdBindVertexBuffers: commandBuffer with: firstBinding with: bindingCount with: pBuffers with: pOffsets [

	<apicall: void 'vkCmdBindVertexBuffers' (VkCommandBuffer uint32_t uint32_t VkBuffer* VkDeviceSize*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdBlitImage: commandBuffer with: srcImage with: srcImageLayout with: dstImage with: dstImageLayout with: regionCount with: pRegions with: filter [

	<apicall: void 'vkCmdBlitImage' (VkCommandBuffer VkImage VkImageLayout VkImage VkImageLayout uint32_t VkImageBlit* VkFilter)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdBuildAccelerationStructureIndirectKHR: commandBuffer with: pInfo with: indirectBuffer with: indirectOffset with: indirectStride [

	<apicall: void 'vkCmdBuildAccelerationStructureIndirectKHR' (VkCommandBuffer VkAccelerationStructureBuildGeometryInfoKHR* VkBuffer VkDeviceSize uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdBuildAccelerationStructureKHR: commandBuffer with: infoCount with: pInfos with: ppOffsetInfos [

	<apicall: void 'vkCmdBuildAccelerationStructureKHR' (VkCommandBuffer uint32_t VkAccelerationStructureBuildGeometryInfoKHR* VkAccelerationStructureBuildOffsetInfoKHR**)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdBuildAccelerationStructureNV: commandBuffer with: pInfo with: instanceData with: instanceOffset with: update with: dst with: src with: scratch with: scratchOffset [

	<apicall: void 'vkCmdBuildAccelerationStructureNV' (VkCommandBuffer VkAccelerationStructureInfoNV* VkBuffer VkDeviceSize VkBool32 VkAccelerationStructureKHR VkAccelerationStructureKHR VkBuffer VkDeviceSize)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdClearAttachments: commandBuffer with: attachmentCount with: pAttachments with: rectCount with: pRects [

	<apicall: void 'vkCmdClearAttachments' (VkCommandBuffer uint32_t VkClearAttachment* uint32_t VkClearRect*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdClearColorImage: commandBuffer with: image with: imageLayout with: pColor with: rangeCount with: pRanges [

	<apicall: void 'vkCmdClearColorImage' (VkCommandBuffer VkImage VkImageLayout VkClearColorValue* uint32_t VkImageSubresourceRange*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdClearDepthStencilImage: commandBuffer with: image with: imageLayout with: pDepthStencil with: rangeCount with: pRanges [

	<apicall: void 'vkCmdClearDepthStencilImage' (VkCommandBuffer VkImage VkImageLayout VkClearDepthStencilValue* uint32_t VkImageSubresourceRange*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdCopyAccelerationStructureKHR: commandBuffer with: pInfo [

	<apicall: void 'vkCmdCopyAccelerationStructureKHR' (VkCommandBuffer VkCopyAccelerationStructureInfoKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdCopyAccelerationStructureNV: commandBuffer with: dst with: src with: mode [

	<apicall: void 'vkCmdCopyAccelerationStructureNV' (VkCommandBuffer VkAccelerationStructureKHR VkAccelerationStructureKHR VkCopyAccelerationStructureModeKHR)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdCopyAccelerationStructureToMemoryKHR: commandBuffer with: pInfo [

	<apicall: void 'vkCmdCopyAccelerationStructureToMemoryKHR' (VkCommandBuffer VkCopyAccelerationStructureToMemoryInfoKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdCopyBuffer: commandBuffer with: srcBuffer with: dstBuffer with: regionCount with: pRegions [

	<apicall: void 'vkCmdCopyBuffer' (VkCommandBuffer VkBuffer VkBuffer uint32_t VkBufferCopy*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdCopyBufferToImage: commandBuffer with: srcBuffer with: dstImage with: dstImageLayout with: regionCount with: pRegions [

	<apicall: void 'vkCmdCopyBufferToImage' (VkCommandBuffer VkBuffer VkImage VkImageLayout uint32_t VkBufferImageCopy*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdCopyImage: commandBuffer with: srcImage with: srcImageLayout with: dstImage with: dstImageLayout with: regionCount with: pRegions [

	<apicall: void 'vkCmdCopyImage' (VkCommandBuffer VkImage VkImageLayout VkImage VkImageLayout uint32_t VkImageCopy*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdCopyImageToBuffer: commandBuffer with: srcImage with: srcImageLayout with: dstBuffer with: regionCount with: pRegions [

	<apicall: void 'vkCmdCopyImageToBuffer' (VkCommandBuffer VkImage VkImageLayout VkBuffer uint32_t VkBufferImageCopy*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdCopyMemoryToAccelerationStructureKHR: commandBuffer with: pInfo [

	<apicall: void 'vkCmdCopyMemoryToAccelerationStructureKHR' (VkCommandBuffer VkCopyMemoryToAccelerationStructureInfoKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdCopyQueryPoolResults: commandBuffer with: queryPool with: firstQuery with: queryCount with: dstBuffer with: dstOffset with: stride with: flags [

	<apicall: void 'vkCmdCopyQueryPoolResults' (VkCommandBuffer VkQueryPool uint32_t uint32_t VkBuffer VkDeviceSize VkDeviceSize VkQueryResultFlags)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdDebugMarkerBeginEXT: commandBuffer with: pMarkerInfo [

	<apicall: void 'vkCmdDebugMarkerBeginEXT' (VkCommandBuffer VkDebugMarkerMarkerInfoEXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdDebugMarkerEndEXT: commandBuffer [

	<apicall: void 'vkCmdDebugMarkerEndEXT' (VkCommandBuffer)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdDebugMarkerInsertEXT: commandBuffer with: pMarkerInfo [

	<apicall: void 'vkCmdDebugMarkerInsertEXT' (VkCommandBuffer VkDebugMarkerMarkerInfoEXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdDispatch: commandBuffer with: groupCountX with: groupCountY with: groupCountZ [

	<apicall: void 'vkCmdDispatch' (VkCommandBuffer uint32_t uint32_t uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdDispatchBase: commandBuffer with: baseGroupX with: baseGroupY with: baseGroupZ with: groupCountX with: groupCountY with: groupCountZ [

	<apicall: void 'vkCmdDispatchBase' (VkCommandBuffer uint32_t uint32_t uint32_t uint32_t uint32_t uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdDispatchBaseKHR [
	^ self vkCmdDispatchBase
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdDispatchIndirect: commandBuffer with: buffer with: offset [

	<apicall: void 'vkCmdDispatchIndirect' (VkCommandBuffer VkBuffer VkDeviceSize)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdDraw: commandBuffer with: vertexCount with: instanceCount with: firstVertex with: firstInstance [

	<apicall: void 'vkCmdDraw' (VkCommandBuffer uint32_t uint32_t uint32_t uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdDrawIndexed: commandBuffer with: indexCount with: instanceCount with: firstIndex with: vertexOffset with: firstInstance [

	<apicall: void 'vkCmdDrawIndexed' (VkCommandBuffer uint32_t uint32_t uint32_t int32_t uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdDrawIndexedIndirect: commandBuffer with: buffer with: offset with: drawCount with: stride [

	<apicall: void 'vkCmdDrawIndexedIndirect' (VkCommandBuffer VkBuffer VkDeviceSize uint32_t uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdDrawIndexedIndirectCount: commandBuffer with: buffer with: offset with: countBuffer with: countBufferOffset with: maxDrawCount with: stride [

	<apicall: void 'vkCmdDrawIndexedIndirectCount' (VkCommandBuffer VkBuffer VkDeviceSize VkBuffer VkDeviceSize uint32_t uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdDrawIndexedIndirectCountAMD [
	^ self vkCmdDrawIndexedIndirectCount
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdDrawIndexedIndirectCountKHR [
	^ self vkCmdDrawIndexedIndirectCount
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdDrawIndirect: commandBuffer with: buffer with: offset with: drawCount with: stride [

	<apicall: void 'vkCmdDrawIndirect' (VkCommandBuffer VkBuffer VkDeviceSize uint32_t uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdDrawIndirectByteCountEXT: commandBuffer with: instanceCount with: firstInstance with: counterBuffer with: counterBufferOffset with: counterOffset with: vertexStride [

	<apicall: void 'vkCmdDrawIndirectByteCountEXT' (VkCommandBuffer uint32_t uint32_t VkBuffer VkDeviceSize uint32_t uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdDrawIndirectCount: commandBuffer with: buffer with: offset with: countBuffer with: countBufferOffset with: maxDrawCount with: stride [

	<apicall: void 'vkCmdDrawIndirectCount' (VkCommandBuffer VkBuffer VkDeviceSize VkBuffer VkDeviceSize uint32_t uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdDrawIndirectCountAMD [
	^ self vkCmdDrawIndirectCount
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdDrawIndirectCountKHR [
	^ self vkCmdDrawIndirectCount
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdDrawMeshTasksIndirectCountNV: commandBuffer with: buffer with: offset with: countBuffer with: countBufferOffset with: maxDrawCount with: stride [

	<apicall: void 'vkCmdDrawMeshTasksIndirectCountNV' (VkCommandBuffer VkBuffer VkDeviceSize VkBuffer VkDeviceSize uint32_t uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdDrawMeshTasksIndirectNV: commandBuffer with: buffer with: offset with: drawCount with: stride [

	<apicall: void 'vkCmdDrawMeshTasksIndirectNV' (VkCommandBuffer VkBuffer VkDeviceSize uint32_t uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdDrawMeshTasksNV: commandBuffer with: taskCount with: firstTask [

	<apicall: void 'vkCmdDrawMeshTasksNV' (VkCommandBuffer uint32_t uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdEndConditionalRenderingEXT: commandBuffer [

	<apicall: void 'vkCmdEndConditionalRenderingEXT' (VkCommandBuffer)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdEndDebugUtilsLabelEXT: commandBuffer [

	<apicall: void 'vkCmdEndDebugUtilsLabelEXT' (VkCommandBuffer)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdEndQuery: commandBuffer with: queryPool with: query [

	<apicall: void 'vkCmdEndQuery' (VkCommandBuffer VkQueryPool uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdEndQueryIndexedEXT: commandBuffer with: queryPool with: query with: index [

	<apicall: void 'vkCmdEndQueryIndexedEXT' (VkCommandBuffer VkQueryPool uint32_t uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdEndRenderPass2: commandBuffer with: pSubpassEndInfo [

	<apicall: void 'vkCmdEndRenderPass2' (VkCommandBuffer VkSubpassEndInfo*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdEndRenderPass2KHR [
	^ self vkCmdEndRenderPass2
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdEndRenderPass: commandBuffer [

	<apicall: void 'vkCmdEndRenderPass' (VkCommandBuffer)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdEndTransformFeedbackEXT: commandBuffer with: firstCounterBuffer with: counterBufferCount with: pCounterBuffers with: pCounterBufferOffsets [

	<apicall: void 'vkCmdEndTransformFeedbackEXT' (VkCommandBuffer uint32_t uint32_t VkBuffer* VkDeviceSize*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdExecuteCommands: commandBuffer with: commandBufferCount with: pCommandBuffers [

	<apicall: void 'vkCmdExecuteCommands' (VkCommandBuffer uint32_t VkCommandBuffer*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdExecuteGeneratedCommandsNV: commandBuffer with: isPreprocessed with: pGeneratedCommandsInfo [

	<apicall: void 'vkCmdExecuteGeneratedCommandsNV' (VkCommandBuffer VkBool32 VkGeneratedCommandsInfoNV*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdFillBuffer: commandBuffer with: dstBuffer with: dstOffset with: size with: data [

	<apicall: void 'vkCmdFillBuffer' (VkCommandBuffer VkBuffer VkDeviceSize VkDeviceSize uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdInsertDebugUtilsLabelEXT: commandBuffer with: pLabelInfo [

	<apicall: void 'vkCmdInsertDebugUtilsLabelEXT' (VkCommandBuffer VkDebugUtilsLabelEXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdNextSubpass2: commandBuffer with: pSubpassBeginInfo with: pSubpassEndInfo [

	<apicall: void 'vkCmdNextSubpass2' (VkCommandBuffer VkSubpassBeginInfo* VkSubpassEndInfo*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdNextSubpass2KHR [
	^ self vkCmdNextSubpass2
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdNextSubpass: commandBuffer with: contents [

	<apicall: void 'vkCmdNextSubpass' (VkCommandBuffer VkSubpassContents)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdPipelineBarrier: commandBuffer with: srcStageMask with: dstStageMask with: dependencyFlags with: memoryBarrierCount with: pMemoryBarriers with: bufferMemoryBarrierCount with: pBufferMemoryBarriers with: imageMemoryBarrierCount with: pImageMemoryBarriers [

	<apicall: void 'vkCmdPipelineBarrier' (VkCommandBuffer VkPipelineStageFlags VkPipelineStageFlags VkDependencyFlags uint32_t VkMemoryBarrier* uint32_t VkBufferMemoryBarrier* uint32_t VkImageMemoryBarrier*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdPreprocessGeneratedCommandsNV: commandBuffer with: pGeneratedCommandsInfo [

	<apicall: void 'vkCmdPreprocessGeneratedCommandsNV' (VkCommandBuffer VkGeneratedCommandsInfoNV*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdPushConstants: commandBuffer with: layout with: stageFlags with: offset with: size with: pValues [

	<apicall: void 'vkCmdPushConstants' (VkCommandBuffer VkPipelineLayout VkShaderStageFlags uint32_t uint32_t void*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdPushDescriptorSetKHR: commandBuffer with: pipelineBindPoint with: layout with: set with: descriptorWriteCount with: pDescriptorWrites [

	<apicall: void 'vkCmdPushDescriptorSetKHR' (VkCommandBuffer VkPipelineBindPoint VkPipelineLayout uint32_t uint32_t VkWriteDescriptorSet*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdPushDescriptorSetWithTemplateKHR: commandBuffer with: descriptorUpdateTemplate with: layout with: set with: pData [

	<apicall: void 'vkCmdPushDescriptorSetWithTemplateKHR' (VkCommandBuffer VkDescriptorUpdateTemplate VkPipelineLayout uint32_t void*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdResetEvent: commandBuffer with: event with: stageMask [

	<apicall: void 'vkCmdResetEvent' (VkCommandBuffer VkEvent VkPipelineStageFlags)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdResetQueryPool: commandBuffer with: queryPool with: firstQuery with: queryCount [

	<apicall: void 'vkCmdResetQueryPool' (VkCommandBuffer VkQueryPool uint32_t uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdResolveImage: commandBuffer with: srcImage with: srcImageLayout with: dstImage with: dstImageLayout with: regionCount with: pRegions [

	<apicall: void 'vkCmdResolveImage' (VkCommandBuffer VkImage VkImageLayout VkImage VkImageLayout uint32_t VkImageResolve*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetBlendConstants: commandBuffer with: blendConstants [

	<apicall: void 'vkCmdSetBlendConstants' (VkCommandBuffer float*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetCheckpointNV: commandBuffer with: pCheckpointMarker [

	<apicall: void 'vkCmdSetCheckpointNV' (VkCommandBuffer void*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetCoarseSampleOrderNV: commandBuffer with: sampleOrderType with: customSampleOrderCount with: pCustomSampleOrders [

	<apicall: void 'vkCmdSetCoarseSampleOrderNV' (VkCommandBuffer VkCoarseSampleOrderTypeNV uint32_t VkCoarseSampleOrderCustomNV*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetCullModeEXT: commandBuffer with: cullMode [

	<apicall: void 'vkCmdSetCullModeEXT' (VkCommandBuffer VkCullModeFlags)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetDepthBias: commandBuffer with: depthBiasConstantFactor with: depthBiasClamp with: depthBiasSlopeFactor [

	<apicall: void 'vkCmdSetDepthBias' (VkCommandBuffer float float float)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetDepthBounds: commandBuffer with: minDepthBounds with: maxDepthBounds [

	<apicall: void 'vkCmdSetDepthBounds' (VkCommandBuffer float float)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetDepthBoundsTestEnableEXT: commandBuffer with: depthBoundsTestEnable [

	<apicall: void 'vkCmdSetDepthBoundsTestEnableEXT' (VkCommandBuffer VkBool32)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetDepthCompareOpEXT: commandBuffer with: depthCompareOp [

	<apicall: void 'vkCmdSetDepthCompareOpEXT' (VkCommandBuffer VkCompareOp)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetDepthTestEnableEXT: commandBuffer with: depthTestEnable [

	<apicall: void 'vkCmdSetDepthTestEnableEXT' (VkCommandBuffer VkBool32)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetDepthWriteEnableEXT: commandBuffer with: depthWriteEnable [

	<apicall: void 'vkCmdSetDepthWriteEnableEXT' (VkCommandBuffer VkBool32)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetDeviceMask: commandBuffer with: deviceMask [

	<apicall: void 'vkCmdSetDeviceMask' (VkCommandBuffer uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetDeviceMaskKHR [
	^ self vkCmdSetDeviceMask
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetDiscardRectangleEXT: commandBuffer with: firstDiscardRectangle with: discardRectangleCount with: pDiscardRectangles [

	<apicall: void 'vkCmdSetDiscardRectangleEXT' (VkCommandBuffer uint32_t uint32_t VkRect2D*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetEvent: commandBuffer with: event with: stageMask [

	<apicall: void 'vkCmdSetEvent' (VkCommandBuffer VkEvent VkPipelineStageFlags)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetExclusiveScissorNV: commandBuffer with: firstExclusiveScissor with: exclusiveScissorCount with: pExclusiveScissors [

	<apicall: void 'vkCmdSetExclusiveScissorNV' (VkCommandBuffer uint32_t uint32_t VkRect2D*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetFrontFaceEXT: commandBuffer with: frontFace [

	<apicall: void 'vkCmdSetFrontFaceEXT' (VkCommandBuffer VkFrontFace)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetLineStippleEXT: commandBuffer with: lineStippleFactor with: lineStipplePattern [

	<apicall: void 'vkCmdSetLineStippleEXT' (VkCommandBuffer uint32_t uint16_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetLineWidth: commandBuffer with: lineWidth [

	<apicall: void 'vkCmdSetLineWidth' (VkCommandBuffer float)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetPerformanceMarkerINTEL: commandBuffer with: pMarkerInfo [

	<apicall: VkResult 'vkCmdSetPerformanceMarkerINTEL' (VkCommandBuffer VkPerformanceMarkerInfoINTEL*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetPerformanceOverrideINTEL: commandBuffer with: pOverrideInfo [

	<apicall: VkResult 'vkCmdSetPerformanceOverrideINTEL' (VkCommandBuffer VkPerformanceOverrideInfoINTEL*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetPerformanceStreamMarkerINTEL: commandBuffer with: pMarkerInfo [

	<apicall: VkResult 'vkCmdSetPerformanceStreamMarkerINTEL' (VkCommandBuffer VkPerformanceStreamMarkerInfoINTEL*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetPrimitiveTopologyEXT: commandBuffer with: primitiveTopology [

	<apicall: void 'vkCmdSetPrimitiveTopologyEXT' (VkCommandBuffer VkPrimitiveTopology)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetSampleLocationsEXT: commandBuffer with: pSampleLocationsInfo [

	<apicall: void 'vkCmdSetSampleLocationsEXT' (VkCommandBuffer VkSampleLocationsInfoEXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetScissor: commandBuffer with: firstScissor with: scissorCount with: pScissors [

	<apicall: void 'vkCmdSetScissor' (VkCommandBuffer uint32_t uint32_t VkRect2D*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetScissorWithCountEXT: commandBuffer with: scissorCount with: pScissors [

	<apicall: void 'vkCmdSetScissorWithCountEXT' (VkCommandBuffer uint32_t VkRect2D*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetStencilCompareMask: commandBuffer with: faceMask with: compareMask [

	<apicall: void 'vkCmdSetStencilCompareMask' (VkCommandBuffer VkStencilFaceFlags uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetStencilOpEXT: commandBuffer with: faceMask with: failOp with: passOp with: depthFailOp with: compareOp [

	<apicall: void 'vkCmdSetStencilOpEXT' (VkCommandBuffer VkStencilFaceFlags VkStencilOp VkStencilOp VkStencilOp VkCompareOp)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetStencilReference: commandBuffer with: faceMask with: reference [

	<apicall: void 'vkCmdSetStencilReference' (VkCommandBuffer VkStencilFaceFlags uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetStencilTestEnableEXT: commandBuffer with: stencilTestEnable [

	<apicall: void 'vkCmdSetStencilTestEnableEXT' (VkCommandBuffer VkBool32)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetStencilWriteMask: commandBuffer with: faceMask with: writeMask [

	<apicall: void 'vkCmdSetStencilWriteMask' (VkCommandBuffer VkStencilFaceFlags uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetViewport: commandBuffer with: firstViewport with: viewportCount with: pViewports [

	<apicall: void 'vkCmdSetViewport' (VkCommandBuffer uint32_t uint32_t VkViewport*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetViewportShadingRatePaletteNV: commandBuffer with: firstViewport with: viewportCount with: pShadingRatePalettes [

	<apicall: void 'vkCmdSetViewportShadingRatePaletteNV' (VkCommandBuffer uint32_t uint32_t VkShadingRatePaletteNV*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetViewportWScalingNV: commandBuffer with: firstViewport with: viewportCount with: pViewportWScalings [

	<apicall: void 'vkCmdSetViewportWScalingNV' (VkCommandBuffer uint32_t uint32_t VkViewportWScalingNV*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdSetViewportWithCountEXT: commandBuffer with: viewportCount with: pViewports [

	<apicall: void 'vkCmdSetViewportWithCountEXT' (VkCommandBuffer uint32_t VkViewport*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdTraceRaysIndirectKHR: commandBuffer with: pRaygenShaderBindingTable with: pMissShaderBindingTable with: pHitShaderBindingTable with: pCallableShaderBindingTable with: buffer with: offset [

	<apicall: void 'vkCmdTraceRaysIndirectKHR' (VkCommandBuffer VkStridedBufferRegionKHR* VkStridedBufferRegionKHR* VkStridedBufferRegionKHR* VkStridedBufferRegionKHR* VkBuffer VkDeviceSize)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdTraceRaysKHR: commandBuffer with: pRaygenShaderBindingTable with: pMissShaderBindingTable with: pHitShaderBindingTable with: pCallableShaderBindingTable with: width with: height with: depth [

	<apicall: void 'vkCmdTraceRaysKHR' (VkCommandBuffer VkStridedBufferRegionKHR* VkStridedBufferRegionKHR* VkStridedBufferRegionKHR* VkStridedBufferRegionKHR* uint32_t uint32_t uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdTraceRaysNV: commandBuffer with: raygenShaderBindingTableBuffer with: raygenShaderBindingOffset with: missShaderBindingTableBuffer with: missShaderBindingOffset with: missShaderBindingStride with: hitShaderBindingTableBuffer with: hitShaderBindingOffset with: hitShaderBindingStride with: callableShaderBindingTableBuffer with: callableShaderBindingOffset with: callableShaderBindingStride with: width with: height with: depth [

	<apicall: void 'vkCmdTraceRaysNV' (VkCommandBuffer VkBuffer VkDeviceSize VkBuffer VkDeviceSize VkDeviceSize VkBuffer VkDeviceSize VkDeviceSize VkBuffer VkDeviceSize VkDeviceSize uint32_t uint32_t uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdUpdateBuffer: commandBuffer with: dstBuffer with: dstOffset with: dataSize with: pData [

	<apicall: void 'vkCmdUpdateBuffer' (VkCommandBuffer VkBuffer VkDeviceSize VkDeviceSize void*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdWaitEvents: commandBuffer with: eventCount with: pEvents with: srcStageMask with: dstStageMask with: memoryBarrierCount with: pMemoryBarriers with: bufferMemoryBarrierCount with: pBufferMemoryBarriers with: imageMemoryBarrierCount with: pImageMemoryBarriers [

	<apicall: void 'vkCmdWaitEvents' (VkCommandBuffer uint32_t VkEvent* VkPipelineStageFlags VkPipelineStageFlags uint32_t VkMemoryBarrier* uint32_t VkBufferMemoryBarrier* uint32_t VkImageMemoryBarrier*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdWriteAccelerationStructuresPropertiesKHR: commandBuffer with: accelerationStructureCount with: pAccelerationStructures with: queryType with: queryPool with: firstQuery [

	<apicall: void 'vkCmdWriteAccelerationStructuresPropertiesKHR' (VkCommandBuffer uint32_t VkAccelerationStructureKHR* VkQueryType VkQueryPool uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdWriteAccelerationStructuresPropertiesNV [
	^ self vkCmdWriteAccelerationStructuresPropertiesKHR
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdWriteBufferMarkerAMD: commandBuffer with: pipelineStage with: dstBuffer with: dstOffset with: marker [

	<apicall: void 'vkCmdWriteBufferMarkerAMD' (VkCommandBuffer VkPipelineStageFlagBits VkBuffer VkDeviceSize uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCmdWriteTimestamp: commandBuffer with: pipelineStage with: queryPool with: query [

	<apicall: void 'vkCmdWriteTimestamp' (VkCommandBuffer VkPipelineStageFlagBits VkQueryPool uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCompileDeferredNV: device with: pipeline with: shader [

	<apicall: VkResult 'vkCompileDeferredNV' (VkDevice VkPipeline uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCopyAccelerationStructureKHR: device with: pInfo [

	<apicall: VkResult 'vkCopyAccelerationStructureKHR' (VkDevice VkCopyAccelerationStructureInfoKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCopyAccelerationStructureToMemoryKHR: device with: pInfo [

	<apicall: VkResult 'vkCopyAccelerationStructureToMemoryKHR' (VkDevice VkCopyAccelerationStructureToMemoryInfoKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCopyMemoryToAccelerationStructureKHR: device with: pInfo [

	<apicall: VkResult 'vkCopyMemoryToAccelerationStructureKHR' (VkDevice VkCopyMemoryToAccelerationStructureInfoKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateAccelerationStructureKHR: device with: pCreateInfo with: pAllocator with: pAccelerationStructure [

	<apicall: VkResult 'vkCreateAccelerationStructureKHR' (VkDevice VkAccelerationStructureCreateInfoKHR* VkAllocationCallbacks* VkAccelerationStructureKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateAccelerationStructureNV: device with: pCreateInfo with: pAllocator with: pAccelerationStructure [

	<apicall: VkResult 'vkCreateAccelerationStructureNV' (VkDevice VkAccelerationStructureCreateInfoNV* VkAllocationCallbacks* VkAccelerationStructureNV*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateAndroidSurfaceKHR: instance with: pCreateInfo with: pAllocator with: pSurface [

	<apicall: VkResult 'vkCreateAndroidSurfaceKHR' (VkInstance VkAndroidSurfaceCreateInfoKHR* VkAllocationCallbacks* VkSurfaceKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateBuffer: device with: pCreateInfo with: pAllocator with: pBuffer [

	<apicall: VkResult 'vkCreateBuffer' (VkDevice VkBufferCreateInfo* VkAllocationCallbacks* VkBuffer*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateBufferView: device with: pCreateInfo with: pAllocator with: pView [

	<apicall: VkResult 'vkCreateBufferView' (VkDevice VkBufferViewCreateInfo* VkAllocationCallbacks* VkBufferView*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateCommandPool: device with: pCreateInfo with: pAllocator with: pCommandPool [

	<apicall: VkResult 'vkCreateCommandPool' (VkDevice VkCommandPoolCreateInfo* VkAllocationCallbacks* VkCommandPool*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateComputePipelines: device with: pipelineCache with: createInfoCount with: pCreateInfos with: pAllocator with: pPipelines [

	<apicall: VkResult 'vkCreateComputePipelines' (VkDevice VkPipelineCache uint32_t VkComputePipelineCreateInfo* VkAllocationCallbacks* VkPipeline*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateDebugReportCallbackEXT: instance with: pCreateInfo with: pAllocator with: pCallback [

	<apicall: VkResult 'vkCreateDebugReportCallbackEXT' (VkInstance VkDebugReportCallbackCreateInfoEXT* VkAllocationCallbacks* VkDebugReportCallbackEXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateDebugUtilsMessengerEXT: instance with: pCreateInfo with: pAllocator with: pMessenger [

	<apicall: VkResult 'vkCreateDebugUtilsMessengerEXT' (VkInstance VkDebugUtilsMessengerCreateInfoEXT* VkAllocationCallbacks* VkDebugUtilsMessengerEXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateDeferredOperationKHR: device with: pAllocator with: pDeferredOperation [

	<apicall: VkResult 'vkCreateDeferredOperationKHR' (VkDevice VkAllocationCallbacks* VkDeferredOperationKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateDescriptorPool: device with: pCreateInfo with: pAllocator with: pDescriptorPool [

	<apicall: VkResult 'vkCreateDescriptorPool' (VkDevice VkDescriptorPoolCreateInfo* VkAllocationCallbacks* VkDescriptorPool*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateDescriptorSetLayout: device with: pCreateInfo with: pAllocator with: pSetLayout [

	<apicall: VkResult 'vkCreateDescriptorSetLayout' (VkDevice VkDescriptorSetLayoutCreateInfo* VkAllocationCallbacks* VkDescriptorSetLayout*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateDescriptorUpdateTemplate: device with: pCreateInfo with: pAllocator with: pDescriptorUpdateTemplate [

	<apicall: VkResult 'vkCreateDescriptorUpdateTemplate' (VkDevice VkDescriptorUpdateTemplateCreateInfo* VkAllocationCallbacks* VkDescriptorUpdateTemplate*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateDescriptorUpdateTemplateKHR [
	^ self vkCreateDescriptorUpdateTemplate
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateDevice: physicalDevice with: pCreateInfo with: pAllocator with: pDevice [

	<apicall: VkResult 'vkCreateDevice' (VkPhysicalDevice VkDeviceCreateInfo* VkAllocationCallbacks* VkDevice*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateDisplayModeKHR: physicalDevice with: display with: pCreateInfo with: pAllocator with: pMode [

	<apicall: VkResult 'vkCreateDisplayModeKHR' (VkPhysicalDevice VkDisplayKHR VkDisplayModeCreateInfoKHR* VkAllocationCallbacks* VkDisplayModeKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateDisplayPlaneSurfaceKHR: instance with: pCreateInfo with: pAllocator with: pSurface [

	<apicall: VkResult 'vkCreateDisplayPlaneSurfaceKHR' (VkInstance VkDisplaySurfaceCreateInfoKHR* VkAllocationCallbacks* VkSurfaceKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateEvent: device with: pCreateInfo with: pAllocator with: pEvent [

	<apicall: VkResult 'vkCreateEvent' (VkDevice VkEventCreateInfo* VkAllocationCallbacks* VkEvent*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateFence: device with: pCreateInfo with: pAllocator with: pFence [

	<apicall: VkResult 'vkCreateFence' (VkDevice VkFenceCreateInfo* VkAllocationCallbacks* VkFence*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateFramebuffer: device with: pCreateInfo with: pAllocator with: pFramebuffer [

	<apicall: VkResult 'vkCreateFramebuffer' (VkDevice VkFramebufferCreateInfo* VkAllocationCallbacks* VkFramebuffer*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateGraphicsPipelines: device with: pipelineCache with: createInfoCount with: pCreateInfos with: pAllocator with: pPipelines [

	<apicall: VkResult 'vkCreateGraphicsPipelines' (VkDevice VkPipelineCache uint32_t VkGraphicsPipelineCreateInfo* VkAllocationCallbacks* VkPipeline*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateHeadlessSurfaceEXT: instance with: pCreateInfo with: pAllocator with: pSurface [

	<apicall: VkResult 'vkCreateHeadlessSurfaceEXT' (VkInstance VkHeadlessSurfaceCreateInfoEXT* VkAllocationCallbacks* VkSurfaceKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateIOSSurfaceMVK: instance with: pCreateInfo with: pAllocator with: pSurface [

	<apicall: VkResult 'vkCreateIOSSurfaceMVK' (VkInstance VkIOSSurfaceCreateInfoMVK* VkAllocationCallbacks* VkSurfaceKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateImage: device with: pCreateInfo with: pAllocator with: pImage [

	<apicall: VkResult 'vkCreateImage' (VkDevice VkImageCreateInfo* VkAllocationCallbacks* VkImage*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateImagePipeSurfaceFUCHSIA: instance with: pCreateInfo with: pAllocator with: pSurface [

	<apicall: VkResult 'vkCreateImagePipeSurfaceFUCHSIA' (VkInstance VkImagePipeSurfaceCreateInfoFUCHSIA* VkAllocationCallbacks* VkSurfaceKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateImageView: device with: pCreateInfo with: pAllocator with: pView [

	<apicall: VkResult 'vkCreateImageView' (VkDevice VkImageViewCreateInfo* VkAllocationCallbacks* VkImageView*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateIndirectCommandsLayoutNV: device with: pCreateInfo with: pAllocator with: pIndirectCommandsLayout [

	<apicall: VkResult 'vkCreateIndirectCommandsLayoutNV' (VkDevice VkIndirectCommandsLayoutCreateInfoNV* VkAllocationCallbacks* VkIndirectCommandsLayoutNV*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateInstance: pCreateInfo with: pAllocator with: pInstance [

	<apicall: VkResult 'vkCreateInstance' (VkInstanceCreateInfo* VkAllocationCallbacks* VkInstance*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateMacOSSurfaceMVK: instance with: pCreateInfo with: pAllocator with: pSurface [

	<apicall: VkResult 'vkCreateMacOSSurfaceMVK' (VkInstance VkMacOSSurfaceCreateInfoMVK* VkAllocationCallbacks* VkSurfaceKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateMetalSurfaceEXT: instance with: pCreateInfo with: pAllocator with: pSurface [

	<apicall: VkResult 'vkCreateMetalSurfaceEXT' (VkInstance VkMetalSurfaceCreateInfoEXT* VkAllocationCallbacks* VkSurfaceKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreatePipelineCache: device with: pCreateInfo with: pAllocator with: pPipelineCache [

	<apicall: VkResult 'vkCreatePipelineCache' (VkDevice VkPipelineCacheCreateInfo* VkAllocationCallbacks* VkPipelineCache*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreatePipelineLayout: device with: pCreateInfo with: pAllocator with: pPipelineLayout [

	<apicall: VkResult 'vkCreatePipelineLayout' (VkDevice VkPipelineLayoutCreateInfo* VkAllocationCallbacks* VkPipelineLayout*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreatePrivateDataSlotEXT: device with: pCreateInfo with: pAllocator with: pPrivateDataSlot [

	<apicall: VkResult 'vkCreatePrivateDataSlotEXT' (VkDevice VkPrivateDataSlotCreateInfoEXT* VkAllocationCallbacks* VkPrivateDataSlotEXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateQueryPool: device with: pCreateInfo with: pAllocator with: pQueryPool [

	<apicall: VkResult 'vkCreateQueryPool' (VkDevice VkQueryPoolCreateInfo* VkAllocationCallbacks* VkQueryPool*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateRayTracingPipelinesKHR: device with: pipelineCache with: createInfoCount with: pCreateInfos with: pAllocator with: pPipelines [

	<apicall: VkResult 'vkCreateRayTracingPipelinesKHR' (VkDevice VkPipelineCache uint32_t VkRayTracingPipelineCreateInfoKHR* VkAllocationCallbacks* VkPipeline*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateRayTracingPipelinesNV: device with: pipelineCache with: createInfoCount with: pCreateInfos with: pAllocator with: pPipelines [

	<apicall: VkResult 'vkCreateRayTracingPipelinesNV' (VkDevice VkPipelineCache uint32_t VkRayTracingPipelineCreateInfoNV* VkAllocationCallbacks* VkPipeline*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateRenderPass2: device with: pCreateInfo with: pAllocator with: pRenderPass [

	<apicall: VkResult 'vkCreateRenderPass2' (VkDevice VkRenderPassCreateInfo2* VkAllocationCallbacks* VkRenderPass*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateRenderPass2KHR [
	^ self vkCreateRenderPass2
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateRenderPass: device with: pCreateInfo with: pAllocator with: pRenderPass [

	<apicall: VkResult 'vkCreateRenderPass' (VkDevice VkRenderPassCreateInfo* VkAllocationCallbacks* VkRenderPass*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateSampler: device with: pCreateInfo with: pAllocator with: pSampler [

	<apicall: VkResult 'vkCreateSampler' (VkDevice VkSamplerCreateInfo* VkAllocationCallbacks* VkSampler*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateSamplerYcbcrConversion: device with: pCreateInfo with: pAllocator with: pYcbcrConversion [

	<apicall: VkResult 'vkCreateSamplerYcbcrConversion' (VkDevice VkSamplerYcbcrConversionCreateInfo* VkAllocationCallbacks* VkSamplerYcbcrConversion*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateSamplerYcbcrConversionKHR [
	^ self vkCreateSamplerYcbcrConversion
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateSemaphore: device with: pCreateInfo with: pAllocator with: pSemaphore [

	<apicall: VkResult 'vkCreateSemaphore' (VkDevice VkSemaphoreCreateInfo* VkAllocationCallbacks* VkSemaphore*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateShaderModule: device with: pCreateInfo with: pAllocator with: pShaderModule [

	<apicall: VkResult 'vkCreateShaderModule' (VkDevice VkShaderModuleCreateInfo* VkAllocationCallbacks* VkShaderModule*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateSharedSwapchainsKHR: device with: swapchainCount with: pCreateInfos with: pAllocator with: pSwapchains [

	<apicall: VkResult 'vkCreateSharedSwapchainsKHR' (VkDevice uint32_t VkSwapchainCreateInfoKHR* VkAllocationCallbacks* VkSwapchainKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateStreamDescriptorSurfaceGGP: instance with: pCreateInfo with: pAllocator with: pSurface [

	<apicall: VkResult 'vkCreateStreamDescriptorSurfaceGGP' (VkInstance VkStreamDescriptorSurfaceCreateInfoGGP* VkAllocationCallbacks* VkSurfaceKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateSwapchainKHR: device with: pCreateInfo with: pAllocator with: pSwapchain [

	<apicall: VkResult 'vkCreateSwapchainKHR' (VkDevice VkSwapchainCreateInfoKHR* VkAllocationCallbacks* VkSwapchainKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateValidationCacheEXT: device with: pCreateInfo with: pAllocator with: pValidationCache [

	<apicall: VkResult 'vkCreateValidationCacheEXT' (VkDevice VkValidationCacheCreateInfoEXT* VkAllocationCallbacks* VkValidationCacheEXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateViSurfaceNN: instance with: pCreateInfo with: pAllocator with: pSurface [

	<apicall: VkResult 'vkCreateViSurfaceNN' (VkInstance VkViSurfaceCreateInfoNN* VkAllocationCallbacks* VkSurfaceKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateWaylandSurfaceKHR: instance with: pCreateInfo with: pAllocator with: pSurface [

	<apicall: VkResult 'vkCreateWaylandSurfaceKHR' (VkInstance VkWaylandSurfaceCreateInfoKHR* VkAllocationCallbacks* VkSurfaceKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateWin32SurfaceKHR: instance with: pCreateInfo with: pAllocator with: pSurface [

	<apicall: VkResult 'vkCreateWin32SurfaceKHR' (VkInstance VkWin32SurfaceCreateInfoKHR* VkAllocationCallbacks* VkSurfaceKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateXcbSurfaceKHR: instance with: pCreateInfo with: pAllocator with: pSurface [

	<apicall: VkResult 'vkCreateXcbSurfaceKHR' (VkInstance VkXcbSurfaceCreateInfoKHR* VkAllocationCallbacks* VkSurfaceKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkCreateXlibSurfaceKHR: instance with: pCreateInfo with: pAllocator with: pSurface [

	<apicall: VkResult 'vkCreateXlibSurfaceKHR' (VkInstance VkXlibSurfaceCreateInfoKHR* VkAllocationCallbacks* VkSurfaceKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDebugMarkerSetObjectNameEXT: device with: pNameInfo [

	<apicall: VkResult 'vkDebugMarkerSetObjectNameEXT' (VkDevice VkDebugMarkerObjectNameInfoEXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDebugMarkerSetObjectTagEXT: device with: pTagInfo [

	<apicall: VkResult 'vkDebugMarkerSetObjectTagEXT' (VkDevice VkDebugMarkerObjectTagInfoEXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDebugReportMessageEXT: instance with: flags with: objectType with: object with: location with: messageCode with: pLayerPrefix with: pMessage [

	<apicall: void 'vkDebugReportMessageEXT' (VkInstance VkDebugReportFlagsEXT VkDebugReportObjectTypeEXT uint64_t size_t int32_t char* char*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDeferredOperationJoinKHR: device with: operation [

	<apicall: VkResult 'vkDeferredOperationJoinKHR' (VkDevice VkDeferredOperationKHR)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyAccelerationStructureKHR: device with: accelerationStructure with: pAllocator [

	<apicall: void 'vkDestroyAccelerationStructureKHR' (VkDevice VkAccelerationStructureKHR VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyAccelerationStructureNV [
	^ self vkDestroyAccelerationStructureKHR
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyBuffer: device with: buffer with: pAllocator [

	<apicall: void 'vkDestroyBuffer' (VkDevice VkBuffer VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyBufferView: device with: bufferView with: pAllocator [

	<apicall: void 'vkDestroyBufferView' (VkDevice VkBufferView VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyCommandPool: device with: commandPool with: pAllocator [

	<apicall: void 'vkDestroyCommandPool' (VkDevice VkCommandPool VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyDebugReportCallbackEXT: instance with: callback with: pAllocator [

	<apicall: void 'vkDestroyDebugReportCallbackEXT' (VkInstance VkDebugReportCallbackEXT VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyDebugUtilsMessengerEXT: instance with: messenger with: pAllocator [

	<apicall: void 'vkDestroyDebugUtilsMessengerEXT' (VkInstance VkDebugUtilsMessengerEXT VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyDeferredOperationKHR: device with: operation with: pAllocator [

	<apicall: void 'vkDestroyDeferredOperationKHR' (VkDevice VkDeferredOperationKHR VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyDescriptorPool: device with: descriptorPool with: pAllocator [

	<apicall: void 'vkDestroyDescriptorPool' (VkDevice VkDescriptorPool VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyDescriptorSetLayout: device with: descriptorSetLayout with: pAllocator [

	<apicall: void 'vkDestroyDescriptorSetLayout' (VkDevice VkDescriptorSetLayout VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyDescriptorUpdateTemplate: device with: descriptorUpdateTemplate with: pAllocator [

	<apicall: void 'vkDestroyDescriptorUpdateTemplate' (VkDevice VkDescriptorUpdateTemplate VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyDescriptorUpdateTemplateKHR [
	^ self vkDestroyDescriptorUpdateTemplate
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyDevice: device with: pAllocator [

	<apicall: void 'vkDestroyDevice' (VkDevice VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyEvent: device with: event with: pAllocator [

	<apicall: void 'vkDestroyEvent' (VkDevice VkEvent VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyFence: device with: fence with: pAllocator [

	<apicall: void 'vkDestroyFence' (VkDevice VkFence VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyFramebuffer: device with: framebuffer with: pAllocator [

	<apicall: void 'vkDestroyFramebuffer' (VkDevice VkFramebuffer VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyImage: device with: image with: pAllocator [

	<apicall: void 'vkDestroyImage' (VkDevice VkImage VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyImageView: device with: imageView with: pAllocator [

	<apicall: void 'vkDestroyImageView' (VkDevice VkImageView VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyIndirectCommandsLayoutNV: device with: indirectCommandsLayout with: pAllocator [

	<apicall: void 'vkDestroyIndirectCommandsLayoutNV' (VkDevice VkIndirectCommandsLayoutNV VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyInstance: instance with: pAllocator [

	<apicall: void 'vkDestroyInstance' (VkInstance VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyPipeline: device with: pipeline with: pAllocator [

	<apicall: void 'vkDestroyPipeline' (VkDevice VkPipeline VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyPipelineCache: device with: pipelineCache with: pAllocator [

	<apicall: void 'vkDestroyPipelineCache' (VkDevice VkPipelineCache VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyPipelineLayout: device with: pipelineLayout with: pAllocator [

	<apicall: void 'vkDestroyPipelineLayout' (VkDevice VkPipelineLayout VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyPrivateDataSlotEXT: device with: privateDataSlot with: pAllocator [

	<apicall: void 'vkDestroyPrivateDataSlotEXT' (VkDevice VkPrivateDataSlotEXT VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyQueryPool: device with: queryPool with: pAllocator [

	<apicall: void 'vkDestroyQueryPool' (VkDevice VkQueryPool VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyRenderPass: device with: renderPass with: pAllocator [

	<apicall: void 'vkDestroyRenderPass' (VkDevice VkRenderPass VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroySampler: device with: sampler with: pAllocator [

	<apicall: void 'vkDestroySampler' (VkDevice VkSampler VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroySamplerYcbcrConversion: device with: ycbcrConversion with: pAllocator [

	<apicall: void 'vkDestroySamplerYcbcrConversion' (VkDevice VkSamplerYcbcrConversion VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroySamplerYcbcrConversionKHR [
	^ self vkDestroySamplerYcbcrConversion
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroySemaphore: device with: semaphore with: pAllocator [

	<apicall: void 'vkDestroySemaphore' (VkDevice VkSemaphore VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyShaderModule: device with: shaderModule with: pAllocator [

	<apicall: void 'vkDestroyShaderModule' (VkDevice VkShaderModule VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroySurfaceKHR: instance with: surface with: pAllocator [

	<apicall: void 'vkDestroySurfaceKHR' (VkInstance VkSurfaceKHR VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroySwapchainKHR: device with: swapchain with: pAllocator [

	<apicall: void 'vkDestroySwapchainKHR' (VkDevice VkSwapchainKHR VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDestroyValidationCacheEXT: device with: validationCache with: pAllocator [

	<apicall: void 'vkDestroyValidationCacheEXT' (VkDevice VkValidationCacheEXT VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDeviceWaitIdle: device [

	<apicall: VkResult 'vkDeviceWaitIdle' (VkDevice)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkDisplayPowerControlEXT: device with: display with: pDisplayPowerInfo [

	<apicall: VkResult 'vkDisplayPowerControlEXT' (VkDevice VkDisplayKHR VkDisplayPowerInfoEXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkEndCommandBuffer: commandBuffer [

	<apicall: VkResult 'vkEndCommandBuffer' (VkCommandBuffer)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkEnumerateDeviceExtensionProperties: physicalDevice with: pLayerName with: pPropertyCount with: pProperties [

	<apicall: VkResult 'vkEnumerateDeviceExtensionProperties' (VkPhysicalDevice char* uint32_t* VkExtensionProperties*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkEnumerateDeviceLayerProperties: physicalDevice with: pPropertyCount with: pProperties [

	<apicall: VkResult 'vkEnumerateDeviceLayerProperties' (VkPhysicalDevice uint32_t* VkLayerProperties*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkEnumerateInstanceExtensionProperties: pLayerName with: pPropertyCount with: pProperties [

	<apicall: VkResult 'vkEnumerateInstanceExtensionProperties' (char* uint32_t* VkExtensionProperties*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkEnumerateInstanceLayerProperties: pPropertyCount with: pProperties [

	<apicall: VkResult 'vkEnumerateInstanceLayerProperties' (uint32_t* VkLayerProperties*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkEnumerateInstanceVersion: pApiVersion [

	<apicall: VkResult 'vkEnumerateInstanceVersion' (uint32_t*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkEnumeratePhysicalDeviceGroups: instance with: pPhysicalDeviceGroupCount with: pPhysicalDeviceGroupProperties [

	<apicall: VkResult 'vkEnumeratePhysicalDeviceGroups' (VkInstance uint32_t* VkPhysicalDeviceGroupProperties*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkEnumeratePhysicalDeviceGroupsKHR [
	^ self vkEnumeratePhysicalDeviceGroups
]

{ #category : #'as yet unclassified' }
VkAPI >> vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR: physicalDevice with: queueFamilyIndex with: pCounterCount with: pCounters with: pCounterDescriptions [

	<apicall: VkResult 'vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR' (VkPhysicalDevice uint32_t uint32_t* VkPerformanceCounterKHR* VkPerformanceCounterDescriptionKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkEnumeratePhysicalDevices: instance with: pPhysicalDeviceCount with: pPhysicalDevices [

	<apicall: VkResult 'vkEnumeratePhysicalDevices' (VkInstance uint32_t* VkPhysicalDevice*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkFlushMappedMemoryRanges: device with: memoryRangeCount with: pMemoryRanges [

	<apicall: VkResult 'vkFlushMappedMemoryRanges' (VkDevice uint32_t VkMappedMemoryRange*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkFreeCommandBuffers: device with: commandPool with: commandBufferCount with: pCommandBuffers [

	<apicall: void 'vkFreeCommandBuffers' (VkDevice VkCommandPool uint32_t VkCommandBuffer*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkFreeDescriptorSets: device with: descriptorPool with: descriptorSetCount with: pDescriptorSets [

	<apicall: VkResult 'vkFreeDescriptorSets' (VkDevice VkDescriptorPool uint32_t VkDescriptorSet*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkFreeMemory: device with: memory with: pAllocator [

	<apicall: void 'vkFreeMemory' (VkDevice VkDeviceMemory VkAllocationCallbacks*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetAccelerationStructureDeviceAddressKHR: device with: pInfo [

	<apicall: VkDeviceAddress 'vkGetAccelerationStructureDeviceAddressKHR' (VkDevice VkAccelerationStructureDeviceAddressInfoKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetAccelerationStructureHandleNV: device with: accelerationStructure with: dataSize with: pData [

	<apicall: VkResult 'vkGetAccelerationStructureHandleNV' (VkDevice VkAccelerationStructureKHR size_t void*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetAccelerationStructureMemoryRequirementsKHR: device with: pInfo with: pMemoryRequirements [

	<apicall: void 'vkGetAccelerationStructureMemoryRequirementsKHR' (VkDevice VkAccelerationStructureMemoryRequirementsInfoKHR* VkMemoryRequirements2*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetAccelerationStructureMemoryRequirementsNV: device with: pInfo with: pMemoryRequirements [

	<apicall: void 'vkGetAccelerationStructureMemoryRequirementsNV' (VkDevice VkAccelerationStructureMemoryRequirementsInfoNV* VkMemoryRequirements2KHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetAndroidHardwareBufferPropertiesANDROID: device with: buffer with: pProperties [

	<apicall: VkResult 'vkGetAndroidHardwareBufferPropertiesANDROID' (VkDevice structAHardwareBuffer* VkAndroidHardwareBufferPropertiesANDROID*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetBufferDeviceAddress: device with: pInfo [

	<apicall: VkDeviceAddress 'vkGetBufferDeviceAddress' (VkDevice VkBufferDeviceAddressInfo*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetBufferDeviceAddressEXT [
	^ self vkGetBufferDeviceAddress
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetBufferDeviceAddressKHR [
	^ self vkGetBufferDeviceAddress
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetBufferMemoryRequirements2: device with: pInfo with: pMemoryRequirements [

	<apicall: void 'vkGetBufferMemoryRequirements2' (VkDevice VkBufferMemoryRequirementsInfo2* VkMemoryRequirements2*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetBufferMemoryRequirements2KHR [
	^ self vkGetBufferMemoryRequirements2
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetBufferMemoryRequirements: device with: buffer with: pMemoryRequirements [

	<apicall: void 'vkGetBufferMemoryRequirements' (VkDevice VkBuffer VkMemoryRequirements*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetBufferOpaqueCaptureAddress: device with: pInfo [

	<apicall: uint64_t 'vkGetBufferOpaqueCaptureAddress' (VkDevice VkBufferDeviceAddressInfo*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetBufferOpaqueCaptureAddressKHR [
	^ self vkGetBufferOpaqueCaptureAddress
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetCalibratedTimestampsEXT: device with: timestampCount with: pTimestampInfos with: pTimestamps with: pMaxDeviation [

	<apicall: VkResult 'vkGetCalibratedTimestampsEXT' (VkDevice uint32_t VkCalibratedTimestampInfoEXT* uint64_t* uint64_t*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetDeferredOperationMaxConcurrencyKHR: device with: operation [

	<apicall: uint32_t 'vkGetDeferredOperationMaxConcurrencyKHR' (VkDevice VkDeferredOperationKHR)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetDeferredOperationResultKHR: device with: operation [

	<apicall: VkResult 'vkGetDeferredOperationResultKHR' (VkDevice VkDeferredOperationKHR)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetDescriptorSetLayoutSupport: device with: pCreateInfo with: pSupport [

	<apicall: void 'vkGetDescriptorSetLayoutSupport' (VkDevice VkDescriptorSetLayoutCreateInfo* VkDescriptorSetLayoutSupport*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetDescriptorSetLayoutSupportKHR [
	^ self vkGetDescriptorSetLayoutSupport
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetDeviceAccelerationStructureCompatibilityKHR: device with: version [

	<apicall: VkResult 'vkGetDeviceAccelerationStructureCompatibilityKHR' (VkDevice VkAccelerationStructureVersionKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetDeviceGroupPeerMemoryFeatures: device with: heapIndex with: localDeviceIndex with: remoteDeviceIndex with: pPeerMemoryFeatures [

	<apicall: void 'vkGetDeviceGroupPeerMemoryFeatures' (VkDevice uint32_t uint32_t uint32_t VkPeerMemoryFeatureFlags*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetDeviceGroupPeerMemoryFeaturesKHR [
	^ self vkGetDeviceGroupPeerMemoryFeatures
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetDeviceGroupPresentCapabilitiesKHR: device with: pDeviceGroupPresentCapabilities [

	<apicall: VkResult 'vkGetDeviceGroupPresentCapabilitiesKHR' (VkDevice VkDeviceGroupPresentCapabilitiesKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetDeviceGroupSurfacePresentModes2EXT: device with: pSurfaceInfo with: pModes [

	<apicall: VkResult 'vkGetDeviceGroupSurfacePresentModes2EXT' (VkDevice VkPhysicalDeviceSurfaceInfo2KHR* VkDeviceGroupPresentModeFlagsKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetDeviceGroupSurfacePresentModesKHR: device with: surface with: pModes [

	<apicall: VkResult 'vkGetDeviceGroupSurfacePresentModesKHR' (VkDevice VkSurfaceKHR VkDeviceGroupPresentModeFlagsKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetDeviceMemoryCommitment: device with: memory with: pCommittedMemoryInBytes [

	<apicall: void 'vkGetDeviceMemoryCommitment' (VkDevice VkDeviceMemory VkDeviceSize*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetDeviceMemoryOpaqueCaptureAddress: device with: pInfo [

	<apicall: uint64_t 'vkGetDeviceMemoryOpaqueCaptureAddress' (VkDevice VkDeviceMemoryOpaqueCaptureAddressInfo*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetDeviceMemoryOpaqueCaptureAddressKHR [
	^ self vkGetDeviceMemoryOpaqueCaptureAddress
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetDeviceProcAddr: device with: pName [

	<apicall: PFN_vkVoidFunction 'vkGetDeviceProcAddr' (VkDevice char*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetDeviceQueue2: device with: pQueueInfo with: pQueue [

	<apicall: void 'vkGetDeviceQueue2' (VkDevice VkDeviceQueueInfo2* VkQueue*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetDeviceQueue: device with: queueFamilyIndex with: queueIndex with: pQueue [

	<apicall: void 'vkGetDeviceQueue' (VkDevice uint32_t uint32_t VkQueue*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetDisplayModeProperties2KHR: physicalDevice with: display with: pPropertyCount with: pProperties [

	<apicall: VkResult 'vkGetDisplayModeProperties2KHR' (VkPhysicalDevice VkDisplayKHR uint32_t* VkDisplayModeProperties2KHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetDisplayModePropertiesKHR: physicalDevice with: display with: pPropertyCount with: pProperties [

	<apicall: VkResult 'vkGetDisplayModePropertiesKHR' (VkPhysicalDevice VkDisplayKHR uint32_t* VkDisplayModePropertiesKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetDisplayPlaneCapabilities2KHR: physicalDevice with: pDisplayPlaneInfo with: pCapabilities [

	<apicall: VkResult 'vkGetDisplayPlaneCapabilities2KHR' (VkPhysicalDevice VkDisplayPlaneInfo2KHR* VkDisplayPlaneCapabilities2KHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetDisplayPlaneCapabilitiesKHR: physicalDevice with: mode with: planeIndex with: pCapabilities [

	<apicall: VkResult 'vkGetDisplayPlaneCapabilitiesKHR' (VkPhysicalDevice VkDisplayModeKHR uint32_t VkDisplayPlaneCapabilitiesKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetDisplayPlaneSupportedDisplaysKHR: physicalDevice with: planeIndex with: pDisplayCount with: pDisplays [

	<apicall: VkResult 'vkGetDisplayPlaneSupportedDisplaysKHR' (VkPhysicalDevice uint32_t uint32_t* VkDisplayKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetEventStatus: device with: event [

	<apicall: VkResult 'vkGetEventStatus' (VkDevice VkEvent)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetFenceFdKHR: device with: pGetFdInfo with: pFd [

	<apicall: VkResult 'vkGetFenceFdKHR' (VkDevice VkFenceGetFdInfoKHR* int*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetFenceStatus: device with: fence [

	<apicall: VkResult 'vkGetFenceStatus' (VkDevice VkFence)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetFenceWin32HandleKHR: device with: pGetWin32HandleInfo with: pHandle [

	<apicall: VkResult 'vkGetFenceWin32HandleKHR' (VkDevice VkFenceGetWin32HandleInfoKHR* HANDLE*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetGeneratedCommandsMemoryRequirementsNV: device with: pInfo with: pMemoryRequirements [

	<apicall: void 'vkGetGeneratedCommandsMemoryRequirementsNV' (VkDevice VkGeneratedCommandsMemoryRequirementsInfoNV* VkMemoryRequirements2*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetImageDrmFormatModifierPropertiesEXT: device with: image with: pProperties [

	<apicall: VkResult 'vkGetImageDrmFormatModifierPropertiesEXT' (VkDevice VkImage VkImageDrmFormatModifierPropertiesEXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetImageMemoryRequirements2: device with: pInfo with: pMemoryRequirements [

	<apicall: void 'vkGetImageMemoryRequirements2' (VkDevice VkImageMemoryRequirementsInfo2* VkMemoryRequirements2*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetImageMemoryRequirements2KHR [
	^ self vkGetImageMemoryRequirements2
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetImageMemoryRequirements: device with: image with: pMemoryRequirements [

	<apicall: void 'vkGetImageMemoryRequirements' (VkDevice VkImage VkMemoryRequirements*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetImageSparseMemoryRequirements2: device with: pInfo with: pSparseMemoryRequirementCount with: pSparseMemoryRequirements [

	<apicall: void 'vkGetImageSparseMemoryRequirements2' (VkDevice VkImageSparseMemoryRequirementsInfo2* uint32_t* VkSparseImageMemoryRequirements2*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetImageSparseMemoryRequirements2KHR [
	^ self vkGetImageSparseMemoryRequirements2
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetImageSparseMemoryRequirements: device with: image with: pSparseMemoryRequirementCount with: pSparseMemoryRequirements [

	<apicall: void 'vkGetImageSparseMemoryRequirements' (VkDevice VkImage uint32_t* VkSparseImageMemoryRequirements*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetImageSubresourceLayout: device with: image with: pSubresource with: pLayout [

	<apicall: void 'vkGetImageSubresourceLayout' (VkDevice VkImage VkImageSubresource* VkSubresourceLayout*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetImageViewAddressNVX: device with: imageView with: pProperties [

	<apicall: VkResult 'vkGetImageViewAddressNVX' (VkDevice VkImageView VkImageViewAddressPropertiesNVX*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetImageViewHandleNVX: device with: pInfo [

	<apicall: uint32_t 'vkGetImageViewHandleNVX' (VkDevice VkImageViewHandleInfoNVX*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetInstanceProcAddr: instance with: pName [

	<apicall: PFN_vkVoidFunction 'vkGetInstanceProcAddr' (VkInstance char*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetMemoryAndroidHardwareBufferANDROID: device with: pInfo with: pBuffer [

	<apicall: VkResult 'vkGetMemoryAndroidHardwareBufferANDROID' (VkDevice VkMemoryGetAndroidHardwareBufferInfoANDROID* structAHardwareBuffer**)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetMemoryFdKHR: device with: pGetFdInfo with: pFd [

	<apicall: VkResult 'vkGetMemoryFdKHR' (VkDevice VkMemoryGetFdInfoKHR* int*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetMemoryFdPropertiesKHR: device with: handleType with: fd with: pMemoryFdProperties [

	<apicall: VkResult 'vkGetMemoryFdPropertiesKHR' (VkDevice VkExternalMemoryHandleTypeFlagBits int VkMemoryFdPropertiesKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetMemoryHostPointerPropertiesEXT: device with: handleType with: pHostPointer with: pMemoryHostPointerProperties [

	<apicall: VkResult 'vkGetMemoryHostPointerPropertiesEXT' (VkDevice VkExternalMemoryHandleTypeFlagBits void* VkMemoryHostPointerPropertiesEXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetMemoryWin32HandleKHR: device with: pGetWin32HandleInfo with: pHandle [

	<apicall: VkResult 'vkGetMemoryWin32HandleKHR' (VkDevice VkMemoryGetWin32HandleInfoKHR* HANDLE*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetMemoryWin32HandleNV: device with: memory with: handleType with: pHandle [

	<apicall: VkResult 'vkGetMemoryWin32HandleNV' (VkDevice VkDeviceMemory VkExternalMemoryHandleTypeFlagsNV HANDLE*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetMemoryWin32HandlePropertiesKHR: device with: handleType with: handle with: pMemoryWin32HandleProperties [

	<apicall: VkResult 'vkGetMemoryWin32HandlePropertiesKHR' (VkDevice VkExternalMemoryHandleTypeFlagBits HANDLE VkMemoryWin32HandlePropertiesKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPastPresentationTimingGOOGLE: device with: swapchain with: pPresentationTimingCount with: pPresentationTimings [

	<apicall: VkResult 'vkGetPastPresentationTimingGOOGLE' (VkDevice VkSwapchainKHR uint32_t* VkPastPresentationTimingGOOGLE*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPerformanceParameterINTEL: device with: parameter with: pValue [

	<apicall: VkResult 'vkGetPerformanceParameterINTEL' (VkDevice VkPerformanceParameterTypeINTEL VkPerformanceValueINTEL*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceCalibrateableTimeDomainsEXT: physicalDevice with: pTimeDomainCount with: pTimeDomains [

	<apicall: VkResult 'vkGetPhysicalDeviceCalibrateableTimeDomainsEXT' (VkPhysicalDevice uint32_t* VkTimeDomainEXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceCooperativeMatrixPropertiesNV: physicalDevice with: pPropertyCount with: pProperties [

	<apicall: VkResult 'vkGetPhysicalDeviceCooperativeMatrixPropertiesNV' (VkPhysicalDevice uint32_t* VkCooperativeMatrixPropertiesNV*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceDisplayPlaneProperties2KHR: physicalDevice with: pPropertyCount with: pProperties [

	<apicall: VkResult 'vkGetPhysicalDeviceDisplayPlaneProperties2KHR' (VkPhysicalDevice uint32_t* VkDisplayPlaneProperties2KHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceDisplayPlanePropertiesKHR: physicalDevice with: pPropertyCount with: pProperties [

	<apicall: VkResult 'vkGetPhysicalDeviceDisplayPlanePropertiesKHR' (VkPhysicalDevice uint32_t* VkDisplayPlanePropertiesKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceDisplayProperties2KHR: physicalDevice with: pPropertyCount with: pProperties [

	<apicall: VkResult 'vkGetPhysicalDeviceDisplayProperties2KHR' (VkPhysicalDevice uint32_t* VkDisplayProperties2KHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceDisplayPropertiesKHR: physicalDevice with: pPropertyCount with: pProperties [

	<apicall: VkResult 'vkGetPhysicalDeviceDisplayPropertiesKHR' (VkPhysicalDevice uint32_t* VkDisplayPropertiesKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceExternalBufferProperties: physicalDevice with: pExternalBufferInfo with: pExternalBufferProperties [

	<apicall: void 'vkGetPhysicalDeviceExternalBufferProperties' (VkPhysicalDevice VkPhysicalDeviceExternalBufferInfo* VkExternalBufferProperties*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceExternalBufferPropertiesKHR [
	^ self vkGetPhysicalDeviceExternalBufferProperties
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceExternalFenceProperties: physicalDevice with: pExternalFenceInfo with: pExternalFenceProperties [

	<apicall: void 'vkGetPhysicalDeviceExternalFenceProperties' (VkPhysicalDevice VkPhysicalDeviceExternalFenceInfo* VkExternalFenceProperties*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceExternalFencePropertiesKHR [
	^ self vkGetPhysicalDeviceExternalFenceProperties
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceExternalImageFormatPropertiesNV: physicalDevice with: format with: type with: tiling with: usage with: flags with: externalHandleType with: pExternalImageFormatProperties [

	<apicall: VkResult 'vkGetPhysicalDeviceExternalImageFormatPropertiesNV' (VkPhysicalDevice VkFormat VkImageType VkImageTiling VkImageUsageFlags VkImageCreateFlags VkExternalMemoryHandleTypeFlagsNV VkExternalImageFormatPropertiesNV*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceExternalSemaphoreProperties: physicalDevice with: pExternalSemaphoreInfo with: pExternalSemaphoreProperties [

	<apicall: void 'vkGetPhysicalDeviceExternalSemaphoreProperties' (VkPhysicalDevice VkPhysicalDeviceExternalSemaphoreInfo* VkExternalSemaphoreProperties*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceExternalSemaphorePropertiesKHR [
	^ self vkGetPhysicalDeviceExternalSemaphoreProperties
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceFeatures2: physicalDevice with: pFeatures [

	<apicall: void 'vkGetPhysicalDeviceFeatures2' (VkPhysicalDevice VkPhysicalDeviceFeatures2*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceFeatures2KHR [
	^ self vkGetPhysicalDeviceFeatures2
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceFeatures: physicalDevice with: pFeatures [

	<apicall: void 'vkGetPhysicalDeviceFeatures' (VkPhysicalDevice VkPhysicalDeviceFeatures*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceFormatProperties2: physicalDevice with: format with: pFormatProperties [

	<apicall: void 'vkGetPhysicalDeviceFormatProperties2' (VkPhysicalDevice VkFormat VkFormatProperties2*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceFormatProperties2KHR [
	^ self vkGetPhysicalDeviceFormatProperties2
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceFormatProperties: physicalDevice with: format with: pFormatProperties [

	<apicall: void 'vkGetPhysicalDeviceFormatProperties' (VkPhysicalDevice VkFormat VkFormatProperties*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceImageFormatProperties2: physicalDevice with: pImageFormatInfo with: pImageFormatProperties [

	<apicall: VkResult 'vkGetPhysicalDeviceImageFormatProperties2' (VkPhysicalDevice VkPhysicalDeviceImageFormatInfo2* VkImageFormatProperties2*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceImageFormatProperties2KHR [
	^ self vkGetPhysicalDeviceImageFormatProperties2
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceImageFormatProperties: physicalDevice with: format with: type with: tiling with: usage with: flags with: pImageFormatProperties [

	<apicall: VkResult 'vkGetPhysicalDeviceImageFormatProperties' (VkPhysicalDevice VkFormat VkImageType VkImageTiling VkImageUsageFlags VkImageCreateFlags VkImageFormatProperties*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceMemoryProperties2: physicalDevice with: pMemoryProperties [

	<apicall: void 'vkGetPhysicalDeviceMemoryProperties2' (VkPhysicalDevice VkPhysicalDeviceMemoryProperties2*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceMemoryProperties2KHR [
	^ self vkGetPhysicalDeviceMemoryProperties2
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceMemoryProperties: physicalDevice with: pMemoryProperties [

	<apicall: void 'vkGetPhysicalDeviceMemoryProperties' (VkPhysicalDevice VkPhysicalDeviceMemoryProperties*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceMultisamplePropertiesEXT: physicalDevice with: samples with: pMultisampleProperties [

	<apicall: void 'vkGetPhysicalDeviceMultisamplePropertiesEXT' (VkPhysicalDevice VkSampleCountFlagBits VkMultisamplePropertiesEXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDevicePresentRectanglesKHR: physicalDevice with: surface with: pRectCount with: pRects [

	<apicall: VkResult 'vkGetPhysicalDevicePresentRectanglesKHR' (VkPhysicalDevice VkSurfaceKHR uint32_t* VkRect2D*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceProperties2: physicalDevice with: pProperties [

	<apicall: void 'vkGetPhysicalDeviceProperties2' (VkPhysicalDevice VkPhysicalDeviceProperties2*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceProperties2KHR [
	^ self vkGetPhysicalDeviceProperties2
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceProperties: physicalDevice with: pProperties [

	<apicall: void 'vkGetPhysicalDeviceProperties' (VkPhysicalDevice VkPhysicalDeviceProperties*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR: physicalDevice with: pPerformanceQueryCreateInfo with: pNumPasses [

	<apicall: void 'vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR' (VkPhysicalDevice VkQueryPoolPerformanceCreateInfoKHR* uint32_t*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceQueueFamilyProperties2: physicalDevice with: pQueueFamilyPropertyCount with: pQueueFamilyProperties [

	<apicall: void 'vkGetPhysicalDeviceQueueFamilyProperties2' (VkPhysicalDevice uint32_t* VkQueueFamilyProperties2*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceQueueFamilyProperties2KHR [
	^ self vkGetPhysicalDeviceQueueFamilyProperties2
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceQueueFamilyProperties: physicalDevice with: pQueueFamilyPropertyCount with: pQueueFamilyProperties [

	<apicall: void 'vkGetPhysicalDeviceQueueFamilyProperties' (VkPhysicalDevice uint32_t* VkQueueFamilyProperties*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceSparseImageFormatProperties2: physicalDevice with: pFormatInfo with: pPropertyCount with: pProperties [

	<apicall: void 'vkGetPhysicalDeviceSparseImageFormatProperties2' (VkPhysicalDevice VkPhysicalDeviceSparseImageFormatInfo2* uint32_t* VkSparseImageFormatProperties2*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceSparseImageFormatProperties2KHR [
	^ self vkGetPhysicalDeviceSparseImageFormatProperties2
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceSparseImageFormatProperties: physicalDevice with: format with: type with: samples with: usage with: tiling with: pPropertyCount with: pProperties [

	<apicall: void 'vkGetPhysicalDeviceSparseImageFormatProperties' (VkPhysicalDevice VkFormat VkImageType VkSampleCountFlagBits VkImageUsageFlags VkImageTiling uint32_t* VkSparseImageFormatProperties*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV: physicalDevice with: pCombinationCount with: pCombinations [

	<apicall: VkResult 'vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV' (VkPhysicalDevice uint32_t* VkFramebufferMixedSamplesCombinationNV*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceSurfaceCapabilities2EXT: physicalDevice with: surface with: pSurfaceCapabilities [

	<apicall: VkResult 'vkGetPhysicalDeviceSurfaceCapabilities2EXT' (VkPhysicalDevice VkSurfaceKHR VkSurfaceCapabilities2EXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceSurfaceCapabilities2KHR: physicalDevice with: pSurfaceInfo with: pSurfaceCapabilities [

	<apicall: VkResult 'vkGetPhysicalDeviceSurfaceCapabilities2KHR' (VkPhysicalDevice VkPhysicalDeviceSurfaceInfo2KHR* VkSurfaceCapabilities2KHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceSurfaceCapabilitiesKHR: physicalDevice with: surface with: pSurfaceCapabilities [

	<apicall: VkResult 'vkGetPhysicalDeviceSurfaceCapabilitiesKHR' (VkPhysicalDevice VkSurfaceKHR VkSurfaceCapabilitiesKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceSurfaceFormats2KHR: physicalDevice with: pSurfaceInfo with: pSurfaceFormatCount with: pSurfaceFormats [

	<apicall: VkResult 'vkGetPhysicalDeviceSurfaceFormats2KHR' (VkPhysicalDevice VkPhysicalDeviceSurfaceInfo2KHR* uint32_t* VkSurfaceFormat2KHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceSurfaceFormatsKHR: physicalDevice with: surface with: pSurfaceFormatCount with: pSurfaceFormats [

	<apicall: VkResult 'vkGetPhysicalDeviceSurfaceFormatsKHR' (VkPhysicalDevice VkSurfaceKHR uint32_t* VkSurfaceFormatKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceSurfacePresentModes2EXT: physicalDevice with: pSurfaceInfo with: pPresentModeCount with: pPresentModes [

	<apicall: VkResult 'vkGetPhysicalDeviceSurfacePresentModes2EXT' (VkPhysicalDevice VkPhysicalDeviceSurfaceInfo2KHR* uint32_t* VkPresentModeKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceSurfacePresentModesKHR: physicalDevice with: surface with: pPresentModeCount with: pPresentModes [

	<apicall: VkResult 'vkGetPhysicalDeviceSurfacePresentModesKHR' (VkPhysicalDevice VkSurfaceKHR uint32_t* VkPresentModeKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceSurfaceSupportKHR: physicalDevice with: queueFamilyIndex with: surface with: pSupported [

	<apicall: VkResult 'vkGetPhysicalDeviceSurfaceSupportKHR' (VkPhysicalDevice uint32_t VkSurfaceKHR VkBool32*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceToolPropertiesEXT: physicalDevice with: pToolCount with: pToolProperties [

	<apicall: VkResult 'vkGetPhysicalDeviceToolPropertiesEXT' (VkPhysicalDevice uint32_t* VkPhysicalDeviceToolPropertiesEXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceWaylandPresentationSupportKHR: physicalDevice with: queueFamilyIndex with: display [

	<apicall: VkBool32 'vkGetPhysicalDeviceWaylandPresentationSupportKHR' (VkPhysicalDevice uint32_t structwl_display*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceWin32PresentationSupportKHR: physicalDevice with: queueFamilyIndex [

	<apicall: VkBool32 'vkGetPhysicalDeviceWin32PresentationSupportKHR' (VkPhysicalDevice uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceXcbPresentationSupportKHR: physicalDevice with: queueFamilyIndex with: connection with: visual_id [

	<apicall: VkBool32 'vkGetPhysicalDeviceXcbPresentationSupportKHR' (VkPhysicalDevice uint32_t xcb_connection_t* xcb_visualid_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPhysicalDeviceXlibPresentationSupportKHR: physicalDevice with: queueFamilyIndex with: dpy with: visualID [

	<apicall: VkBool32 'vkGetPhysicalDeviceXlibPresentationSupportKHR' (VkPhysicalDevice uint32_t Display* VisualID)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPipelineCacheData: device with: pipelineCache with: pDataSize with: pData [

	<apicall: VkResult 'vkGetPipelineCacheData' (VkDevice VkPipelineCache size_t* void*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPipelineExecutableInternalRepresentationsKHR: device with: pExecutableInfo with: pInternalRepresentationCount with: pInternalRepresentations [

	<apicall: VkResult 'vkGetPipelineExecutableInternalRepresentationsKHR' (VkDevice VkPipelineExecutableInfoKHR* uint32_t* VkPipelineExecutableInternalRepresentationKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPipelineExecutablePropertiesKHR: device with: pPipelineInfo with: pExecutableCount with: pProperties [

	<apicall: VkResult 'vkGetPipelineExecutablePropertiesKHR' (VkDevice VkPipelineInfoKHR* uint32_t* VkPipelineExecutablePropertiesKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPipelineExecutableStatisticsKHR: device with: pExecutableInfo with: pStatisticCount with: pStatistics [

	<apicall: VkResult 'vkGetPipelineExecutableStatisticsKHR' (VkDevice VkPipelineExecutableInfoKHR* uint32_t* VkPipelineExecutableStatisticKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetPrivateDataEXT: device with: objectType with: objectHandle with: privateDataSlot with: pData [

	<apicall: void 'vkGetPrivateDataEXT' (VkDevice VkObjectType uint64_t VkPrivateDataSlotEXT uint64_t*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetQueryPoolResults: device with: queryPool with: firstQuery with: queryCount with: dataSize with: pData with: stride with: flags [

	<apicall: VkResult 'vkGetQueryPoolResults' (VkDevice VkQueryPool uint32_t uint32_t size_t void* VkDeviceSize VkQueryResultFlags)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetQueueCheckpointDataNV: queue with: pCheckpointDataCount with: pCheckpointData [

	<apicall: void 'vkGetQueueCheckpointDataNV' (VkQueue uint32_t* VkCheckpointDataNV*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetRandROutputDisplayEXT: physicalDevice with: dpy with: rrOutput with: pDisplay [

	<apicall: VkResult 'vkGetRandROutputDisplayEXT' (VkPhysicalDevice Display* RROutput VkDisplayKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetRayTracingCaptureReplayShaderGroupHandlesKHR: device with: pipeline with: firstGroup with: groupCount with: dataSize with: pData [

	<apicall: VkResult 'vkGetRayTracingCaptureReplayShaderGroupHandlesKHR' (VkDevice VkPipeline uint32_t uint32_t size_t void*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetRayTracingShaderGroupHandlesKHR: device with: pipeline with: firstGroup with: groupCount with: dataSize with: pData [

	<apicall: VkResult 'vkGetRayTracingShaderGroupHandlesKHR' (VkDevice VkPipeline uint32_t uint32_t size_t void*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetRayTracingShaderGroupHandlesNV [
	^ self vkGetRayTracingShaderGroupHandlesKHR
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetRefreshCycleDurationGOOGLE: device with: swapchain with: pDisplayTimingProperties [

	<apicall: VkResult 'vkGetRefreshCycleDurationGOOGLE' (VkDevice VkSwapchainKHR VkRefreshCycleDurationGOOGLE*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetRenderAreaGranularity: device with: renderPass with: pGranularity [

	<apicall: void 'vkGetRenderAreaGranularity' (VkDevice VkRenderPass VkExtent2D*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetSemaphoreCounterValue: device with: semaphore with: pValue [

	<apicall: VkResult 'vkGetSemaphoreCounterValue' (VkDevice VkSemaphore uint64_t*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetSemaphoreCounterValueKHR [
	^ self vkGetSemaphoreCounterValue
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetSemaphoreFdKHR: device with: pGetFdInfo with: pFd [

	<apicall: VkResult 'vkGetSemaphoreFdKHR' (VkDevice VkSemaphoreGetFdInfoKHR* int*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetSemaphoreWin32HandleKHR: device with: pGetWin32HandleInfo with: pHandle [

	<apicall: VkResult 'vkGetSemaphoreWin32HandleKHR' (VkDevice VkSemaphoreGetWin32HandleInfoKHR* HANDLE*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetShaderInfoAMD: device with: pipeline with: shaderStage with: infoType with: pInfoSize with: pInfo [

	<apicall: VkResult 'vkGetShaderInfoAMD' (VkDevice VkPipeline VkShaderStageFlagBits VkShaderInfoTypeAMD size_t* void*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetSwapchainCounterEXT: device with: swapchain with: counter with: pCounterValue [

	<apicall: VkResult 'vkGetSwapchainCounterEXT' (VkDevice VkSwapchainKHR VkSurfaceCounterFlagBitsEXT uint64_t*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetSwapchainGrallocUsage2ANDROID: device with: format with: imageUsage with: swapchainImageUsage with: grallocConsumerUsage with: grallocProducerUsage [

	<apicall: VkResult 'vkGetSwapchainGrallocUsage2ANDROID' (VkDevice VkFormat VkImageUsageFlags VkSwapchainImageUsageFlagsANDROID uint64_t* uint64_t*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetSwapchainGrallocUsageANDROID: device with: format with: imageUsage with: grallocUsage [

	<apicall: VkResult 'vkGetSwapchainGrallocUsageANDROID' (VkDevice VkFormat VkImageUsageFlags int*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetSwapchainImagesKHR: device with: swapchain with: pSwapchainImageCount with: pSwapchainImages [

	<apicall: VkResult 'vkGetSwapchainImagesKHR' (VkDevice VkSwapchainKHR uint32_t* VkImage*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetSwapchainStatusKHR: device with: swapchain [

	<apicall: VkResult 'vkGetSwapchainStatusKHR' (VkDevice VkSwapchainKHR)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkGetValidationCacheDataEXT: device with: validationCache with: pDataSize with: pData [

	<apicall: VkResult 'vkGetValidationCacheDataEXT' (VkDevice VkValidationCacheEXT size_t* void*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkImportFenceFdKHR: device with: pImportFenceFdInfo [

	<apicall: VkResult 'vkImportFenceFdKHR' (VkDevice VkImportFenceFdInfoKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkImportFenceWin32HandleKHR: device with: pImportFenceWin32HandleInfo [

	<apicall: VkResult 'vkImportFenceWin32HandleKHR' (VkDevice VkImportFenceWin32HandleInfoKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkImportSemaphoreFdKHR: device with: pImportSemaphoreFdInfo [

	<apicall: VkResult 'vkImportSemaphoreFdKHR' (VkDevice VkImportSemaphoreFdInfoKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkImportSemaphoreWin32HandleKHR: device with: pImportSemaphoreWin32HandleInfo [

	<apicall: VkResult 'vkImportSemaphoreWin32HandleKHR' (VkDevice VkImportSemaphoreWin32HandleInfoKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkInitializePerformanceApiINTEL: device with: pInitializeInfo [

	<apicall: VkResult 'vkInitializePerformanceApiINTEL' (VkDevice VkInitializePerformanceApiInfoINTEL*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkInvalidateMappedMemoryRanges: device with: memoryRangeCount with: pMemoryRanges [

	<apicall: VkResult 'vkInvalidateMappedMemoryRanges' (VkDevice uint32_t VkMappedMemoryRange*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkMapMemory: device with: memory with: offset with: size with: flags with: ppData [

	<apicall: VkResult 'vkMapMemory' (VkDevice VkDeviceMemory VkDeviceSize VkDeviceSize VkMemoryMapFlags void**)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkMergePipelineCaches: device with: dstCache with: srcCacheCount with: pSrcCaches [

	<apicall: VkResult 'vkMergePipelineCaches' (VkDevice VkPipelineCache uint32_t VkPipelineCache*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkMergeValidationCachesEXT: device with: dstCache with: srcCacheCount with: pSrcCaches [

	<apicall: VkResult 'vkMergeValidationCachesEXT' (VkDevice VkValidationCacheEXT uint32_t VkValidationCacheEXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkQueueBeginDebugUtilsLabelEXT: queue with: pLabelInfo [

	<apicall: void 'vkQueueBeginDebugUtilsLabelEXT' (VkQueue VkDebugUtilsLabelEXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkQueueBindSparse: queue with: bindInfoCount with: pBindInfo with: fence [

	<apicall: VkResult 'vkQueueBindSparse' (VkQueue uint32_t VkBindSparseInfo* VkFence)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkQueueEndDebugUtilsLabelEXT: queue [

	<apicall: void 'vkQueueEndDebugUtilsLabelEXT' (VkQueue)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkQueueInsertDebugUtilsLabelEXT: queue with: pLabelInfo [

	<apicall: void 'vkQueueInsertDebugUtilsLabelEXT' (VkQueue VkDebugUtilsLabelEXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkQueuePresentKHR: queue with: pPresentInfo [

	<apicall: VkResult 'vkQueuePresentKHR' (VkQueue VkPresentInfoKHR*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkQueueSetPerformanceConfigurationINTEL: queue with: configuration [

	<apicall: VkResult 'vkQueueSetPerformanceConfigurationINTEL' (VkQueue VkPerformanceConfigurationINTEL)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkQueueSignalReleaseImageANDROID: queue with: waitSemaphoreCount with: pWaitSemaphores with: image with: pNativeFenceFd [

	<apicall: VkResult 'vkQueueSignalReleaseImageANDROID' (VkQueue uint32_t VkSemaphore* VkImage int*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkQueueSubmit: queue with: submitCount with: pSubmits with: fence [

	<apicall: VkResult 'vkQueueSubmit' (VkQueue uint32_t VkSubmitInfo* VkFence)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkQueueWaitIdle: queue [

	<apicall: VkResult 'vkQueueWaitIdle' (VkQueue)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkRegisterDeviceEventEXT: device with: pDeviceEventInfo with: pAllocator with: pFence [

	<apicall: VkResult 'vkRegisterDeviceEventEXT' (VkDevice VkDeviceEventInfoEXT* VkAllocationCallbacks* VkFence*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkRegisterDisplayEventEXT: device with: display with: pDisplayEventInfo with: pAllocator with: pFence [

	<apicall: VkResult 'vkRegisterDisplayEventEXT' (VkDevice VkDisplayKHR VkDisplayEventInfoEXT* VkAllocationCallbacks* VkFence*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkReleaseDisplayEXT: physicalDevice with: display [

	<apicall: VkResult 'vkReleaseDisplayEXT' (VkPhysicalDevice VkDisplayKHR)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkReleaseFullScreenExclusiveModeEXT: device with: swapchain [

	<apicall: VkResult 'vkReleaseFullScreenExclusiveModeEXT' (VkDevice VkSwapchainKHR)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkReleasePerformanceConfigurationINTEL: device with: configuration [

	<apicall: VkResult 'vkReleasePerformanceConfigurationINTEL' (VkDevice VkPerformanceConfigurationINTEL)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkReleaseProfilingLockKHR: device [

	<apicall: void 'vkReleaseProfilingLockKHR' (VkDevice)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkResetCommandBuffer: commandBuffer with: flags [

	<apicall: VkResult 'vkResetCommandBuffer' (VkCommandBuffer VkCommandBufferResetFlags)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkResetCommandPool: device with: commandPool with: flags [

	<apicall: VkResult 'vkResetCommandPool' (VkDevice VkCommandPool VkCommandPoolResetFlags)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkResetDescriptorPool: device with: descriptorPool with: flags [

	<apicall: VkResult 'vkResetDescriptorPool' (VkDevice VkDescriptorPool VkDescriptorPoolResetFlags)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkResetEvent: device with: event [

	<apicall: VkResult 'vkResetEvent' (VkDevice VkEvent)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkResetFences: device with: fenceCount with: pFences [

	<apicall: VkResult 'vkResetFences' (VkDevice uint32_t VkFence*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkResetQueryPool: device with: queryPool with: firstQuery with: queryCount [

	<apicall: void 'vkResetQueryPool' (VkDevice VkQueryPool uint32_t uint32_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkResetQueryPoolEXT [
	^ self vkResetQueryPool
]

{ #category : #'as yet unclassified' }
VkAPI >> vkSetDebugUtilsObjectNameEXT: device with: pNameInfo [

	<apicall: VkResult 'vkSetDebugUtilsObjectNameEXT' (VkDevice VkDebugUtilsObjectNameInfoEXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkSetDebugUtilsObjectTagEXT: device with: pTagInfo [

	<apicall: VkResult 'vkSetDebugUtilsObjectTagEXT' (VkDevice VkDebugUtilsObjectTagInfoEXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkSetEvent: device with: event [

	<apicall: VkResult 'vkSetEvent' (VkDevice VkEvent)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkSetHdrMetadataEXT: device with: swapchainCount with: pSwapchains with: pMetadata [

	<apicall: void 'vkSetHdrMetadataEXT' (VkDevice uint32_t VkSwapchainKHR* VkHdrMetadataEXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkSetLocalDimmingAMD: device with: swapChain with: localDimmingEnable [

	<apicall: void 'vkSetLocalDimmingAMD' (VkDevice VkSwapchainKHR VkBool32)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkSetPrivateDataEXT: device with: objectType with: objectHandle with: privateDataSlot with: data [

	<apicall: VkResult 'vkSetPrivateDataEXT' (VkDevice VkObjectType uint64_t VkPrivateDataSlotEXT uint64_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkSignalSemaphore: device with: pSignalInfo [

	<apicall: VkResult 'vkSignalSemaphore' (VkDevice VkSemaphoreSignalInfo*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkSignalSemaphoreKHR [
	^ self vkSignalSemaphore
]

{ #category : #'as yet unclassified' }
VkAPI >> vkSubmitDebugUtilsMessageEXT: instance with: messageSeverity with: messageTypes with: pCallbackData [

	<apicall: void 'vkSubmitDebugUtilsMessageEXT' (VkInstance VkDebugUtilsMessageSeverityFlagBitsEXT VkDebugUtilsMessageTypeFlagsEXT VkDebugUtilsMessengerCallbackDataEXT*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkTrimCommandPool: device with: commandPool with: flags [

	<apicall: void 'vkTrimCommandPool' (VkDevice VkCommandPool VkCommandPoolTrimFlags)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkTrimCommandPoolKHR [
	^ self vkTrimCommandPool
]

{ #category : #'as yet unclassified' }
VkAPI >> vkUninitializePerformanceApiINTEL: device [

	<apicall: void 'vkUninitializePerformanceApiINTEL' (VkDevice)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkUnmapMemory: device with: memory [

	<apicall: void 'vkUnmapMemory' (VkDevice VkDeviceMemory)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkUpdateDescriptorSetWithTemplate: device with: descriptorSet with: descriptorUpdateTemplate with: pData [

	<apicall: void 'vkUpdateDescriptorSetWithTemplate' (VkDevice VkDescriptorSet VkDescriptorUpdateTemplate void*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkUpdateDescriptorSetWithTemplateKHR [
	^ self vkUpdateDescriptorSetWithTemplate
]

{ #category : #'as yet unclassified' }
VkAPI >> vkUpdateDescriptorSets: device with: descriptorWriteCount with: pDescriptorWrites with: descriptorCopyCount with: pDescriptorCopies [

	<apicall: void 'vkUpdateDescriptorSets' (VkDevice uint32_t VkWriteDescriptorSet* uint32_t VkCopyDescriptorSet*)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkWaitForFences: device with: fenceCount with: pFences with: waitAll with: timeout [

	<apicall: VkResult 'vkWaitForFences' (VkDevice uint32_t VkFence* VkBool32 uint64_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkWaitSemaphores: device with: pWaitInfo with: timeout [

	<apicall: VkResult 'vkWaitSemaphores' (VkDevice VkSemaphoreWaitInfo* uint64_t)>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
VkAPI >> vkWaitSemaphoresKHR [
	^ self vkWaitSemaphores
]

{ #category : #'as yet unclassified' }
VkAPI >> vkWriteAccelerationStructuresPropertiesKHR: device with: accelerationStructureCount with: pAccelerationStructures with: queryType with: dataSize with: pData with: stride [

	<apicall: VkResult 'vkWriteAccelerationStructuresPropertiesKHR' (VkDevice uint32_t VkAccelerationStructureKHR* VkQueryType size_t void* size_t)>
	^ self externalCallFailed
]
