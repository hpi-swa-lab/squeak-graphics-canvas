Class {
	#name : #VkDrawIndirectCommand,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDrawIndirectCommand class >> fields [

	^ #(
		(vertexCount 'uint32_t')
		(instanceCount 'uint32_t')
		(firstVertex 'uint32_t')
		(firstInstance 'uint32_t')
	)
]
