Class {
	#name : #VkPipelineLayoutCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineLayoutCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkPipelineLayoutCreateFlags')
		(setLayoutCount 'uint32_t')
		(pSetLayouts 'VkDescriptorSetLayout*')
		(pushConstantRangeCount 'uint32_t')
		(pPushConstantRanges 'VkPushConstantRange*')
	)
]
