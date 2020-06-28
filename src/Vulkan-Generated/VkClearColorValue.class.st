Class {
	#name : #VkClearColorValue,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkClearColorValue class >> fields [

	^ #(
		(float32 'float')
		(int32 'int32_t')
		(uint32 'uint32_t')
	)
]
