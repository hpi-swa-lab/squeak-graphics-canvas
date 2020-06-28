Class {
	#name : #VkCommandBufferInheritanceInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkCommandBufferInheritanceInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(renderPass 'VkRenderPass')
		(subpass 'uint32_t')
		(framebuffer 'VkFramebuffer')
		(occlusionQueryEnable 'VkBool32')
		(queryFlags 'VkQueryControlFlags')
		(pipelineStatistics 'VkQueryPipelineStatisticFlags')
	)
]
