Class {
	#name : #VkVertexInputBindingDescription,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkVertexInputBindingDescription class >> fields [

	^ #(
		(binding 'uint32_t')
		(stride 'uint32_t')
		(inputRate 'VkVertexInputRate')
	)
]
