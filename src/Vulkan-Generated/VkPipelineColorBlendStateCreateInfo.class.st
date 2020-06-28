Class {
	#name : #VkPipelineColorBlendStateCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineColorBlendStateCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkPipelineColorBlendStateCreateFlags')
		(logicOpEnable 'VkBool32')
		(logicOp 'VkLogicOp')
		(attachmentCount 'uint32_t')
		(pAttachments 'VkPipelineColorBlendAttachmentState*')
		(blendConstants 'float')
	)
]
