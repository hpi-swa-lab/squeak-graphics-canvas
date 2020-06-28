Class {
	#name : #VkGraphicsPipelineShaderGroupsCreateInfoNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkGraphicsPipelineShaderGroupsCreateInfoNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(groupCount 'uint32_t')
		(pGroups 'VkGraphicsShaderGroupCreateInfoNV*')
		(pipelineCount 'uint32_t')
		(pPipelines 'VkPipeline*')
	)
]
