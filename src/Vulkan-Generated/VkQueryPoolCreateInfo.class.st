Class {
	#name : #VkQueryPoolCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkQueryPoolCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkQueryPoolCreateFlags')
		(queryType 'VkQueryType')
		(queryCount 'uint32_t')
		(pipelineStatistics 'VkQueryPipelineStatisticFlags')
	)
]
