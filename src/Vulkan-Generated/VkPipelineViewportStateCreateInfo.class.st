Class {
	#name : #VkPipelineViewportStateCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineViewportStateCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkPipelineViewportStateCreateFlags')
		(viewportCount 'uint32_t')
		(pViewports 'VkViewport*')
		(scissorCount 'uint32_t')
		(pScissors 'VkRect2D*')
	)
]
