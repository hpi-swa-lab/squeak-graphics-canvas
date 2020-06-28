Class {
	#name : #VkPipelineTessellationStateCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineTessellationStateCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkPipelineTessellationStateCreateFlags')
		(patchControlPoints 'uint32_t')
	)
]
