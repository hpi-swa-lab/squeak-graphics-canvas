Class {
	#name : #VkPipelineColorBlendAttachmentState,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineColorBlendAttachmentState class >> fields [

	^ #(
		(blendEnable 'VkBool32')
		(srcColorBlendFactor 'VkBlendFactor')
		(dstColorBlendFactor 'VkBlendFactor')
		(colorBlendOp 'VkBlendOp')
		(srcAlphaBlendFactor 'VkBlendFactor')
		(dstAlphaBlendFactor 'VkBlendFactor')
		(alphaBlendOp 'VkBlendOp')
		(colorWriteMask 'VkColorComponentFlags')
	)
]
