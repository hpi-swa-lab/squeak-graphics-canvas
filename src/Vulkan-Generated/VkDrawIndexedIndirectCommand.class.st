Class {
	#name : #VkDrawIndexedIndirectCommand,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDrawIndexedIndirectCommand class >> fields [

	^ #(
		(indexCount 'uint32_t')
		(instanceCount 'uint32_t')
		(firstIndex 'uint32_t')
		(vertexOffset 'int32_t')
		(firstInstance 'uint32_t')
	)
]
