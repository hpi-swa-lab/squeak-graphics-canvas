Class {
	#name : #VkPipelineDepthStencilStateCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineDepthStencilStateCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkPipelineDepthStencilStateCreateFlags')
		(depthTestEnable 'VkBool32')
		(depthWriteEnable 'VkBool32')
		(depthCompareOp 'VkCompareOp')
		(depthBoundsTestEnable 'VkBool32')
		(stencilTestEnable 'VkBool32')
		(front 'VkStencilOpState')
		(back 'VkStencilOpState')
		(minDepthBounds 'float')
		(maxDepthBounds 'float')
	)
]
