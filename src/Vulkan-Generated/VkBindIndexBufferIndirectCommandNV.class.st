Class {
	#name : #VkBindIndexBufferIndirectCommandNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkBindIndexBufferIndirectCommandNV class >> fields [

	^ #(
		(bufferAddress 'VkDeviceAddress')
		(size 'uint32_t')
		(indexType 'VkIndexType')
	)
]
