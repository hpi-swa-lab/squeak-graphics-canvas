Class {
	#name : #VkPipelineViewportExclusiveScissorStateCreateInfoNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineViewportExclusiveScissorStateCreateInfoNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(exclusiveScissorCount 'uint32_t')
		(pExclusiveScissors 'VkRect2D*')
	)
]
