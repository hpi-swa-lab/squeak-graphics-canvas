Class {
	#name : #VkComputePipelineCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkComputePipelineCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkPipelineCreateFlags')
		(stage 'VkPipelineShaderStageCreateInfo')
		(layout 'VkPipelineLayout')
		(basePipelineHandle 'VkPipeline')
		(basePipelineIndex 'int32_t')
	)
]
