Class {
	#name : #VkPipelineVertexInputStateCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineVertexInputStateCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkPipelineVertexInputStateCreateFlags')
		(vertexBindingDescriptionCount 'uint32_t')
		(pVertexBindingDescriptions 'VkVertexInputBindingDescription*')
		(vertexAttributeDescriptionCount 'uint32_t')
		(pVertexAttributeDescriptions 'VkVertexInputAttributeDescription*')
	)
]
