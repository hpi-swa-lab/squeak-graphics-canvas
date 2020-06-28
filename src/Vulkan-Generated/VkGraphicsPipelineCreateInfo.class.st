Class {
	#name : #VkGraphicsPipelineCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkGraphicsPipelineCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkPipelineCreateFlags')
		(stageCount 'uint32_t')
		(pStages 'VkPipelineShaderStageCreateInfo*')
		(pVertexInputState 'VkPipelineVertexInputStateCreateInfo*')
		(pInputAssemblyState 'VkPipelineInputAssemblyStateCreateInfo*')
		(pTessellationState 'VkPipelineTessellationStateCreateInfo*')
		(pViewportState 'VkPipelineViewportStateCreateInfo*')
		(pRasterizationState 'VkPipelineRasterizationStateCreateInfo*')
		(pMultisampleState 'VkPipelineMultisampleStateCreateInfo*')
		(pDepthStencilState 'VkPipelineDepthStencilStateCreateInfo*')
		(pColorBlendState 'VkPipelineColorBlendStateCreateInfo*')
		(pDynamicState 'VkPipelineDynamicStateCreateInfo*')
		(layout 'VkPipelineLayout')
		(renderPass 'VkRenderPass')
		(subpass 'uint32_t')
		(basePipelineHandle 'VkPipeline')
		(basePipelineIndex 'int32_t')
	)
]
