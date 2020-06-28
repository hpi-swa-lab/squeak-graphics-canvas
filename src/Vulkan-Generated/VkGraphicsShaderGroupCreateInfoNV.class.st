Class {
	#name : #VkGraphicsShaderGroupCreateInfoNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkGraphicsShaderGroupCreateInfoNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(stageCount 'uint32_t')
		(pStages 'VkPipelineShaderStageCreateInfo*')
		(pVertexInputState 'VkPipelineVertexInputStateCreateInfo*')
		(pTessellationState 'VkPipelineTessellationStateCreateInfo*')
	)
]
