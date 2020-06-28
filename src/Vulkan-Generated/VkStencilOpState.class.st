Class {
	#name : #VkStencilOpState,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkStencilOpState class >> fields [

	^ #(
		(failOp 'VkStencilOp')
		(passOp 'VkStencilOp')
		(depthFailOp 'VkStencilOp')
		(compareOp 'VkCompareOp')
		(compareMask 'uint32_t')
		(writeMask 'uint32_t')
		(reference 'uint32_t')
	)
]
