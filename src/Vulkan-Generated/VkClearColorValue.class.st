Class {
	#name : #VkClearColorValue,
	#superclass : #ExternalUnion,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkClearColorValue class >> fields [

	^ #(
		(float32 'float[4]')
		(int32 'int32_t[4]')
		(uint32 'uint32_t[4]')
	)
]
