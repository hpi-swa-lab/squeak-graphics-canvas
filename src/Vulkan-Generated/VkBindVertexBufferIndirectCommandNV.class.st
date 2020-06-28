Class {
	#name : #VkBindVertexBufferIndirectCommandNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkBindVertexBufferIndirectCommandNV class >> fields [

	^ #(
		(bufferAddress 'VkDeviceAddress')
		(size 'uint32_t')
		(stride 'uint32_t')
	)
]
