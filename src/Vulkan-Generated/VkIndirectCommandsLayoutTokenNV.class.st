Class {
	#name : #VkIndirectCommandsLayoutTokenNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkIndirectCommandsLayoutTokenNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(tokenType 'VkIndirectCommandsTokenTypeNV')
		(stream 'uint32_t')
		(offset 'uint32_t')
		(vertexBindingUnit 'uint32_t')
		(vertexDynamicStride 'VkBool32')
		(pushconstantPipelineLayout 'VkPipelineLayout')
		(pushconstantShaderStageFlags 'VkShaderStageFlags')
		(pushconstantOffset 'uint32_t')
		(pushconstantSize 'uint32_t')
		(indirectStateFlags 'VkIndirectStateFlagsNV')
		(indexTypeCount 'uint32_t')
		(pIndexTypes 'VkIndexType*')
		(pIndexTypeValues 'uint32_t*')
	)
]
