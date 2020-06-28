Class {
	#name : #VkPipelineDynamicStateCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineDynamicStateCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkPipelineDynamicStateCreateFlags')
		(dynamicStateCount 'uint32_t')
		(pDynamicStates 'VkDynamicState*')
	)
]
