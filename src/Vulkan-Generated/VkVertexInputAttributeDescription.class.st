Class {
	#name : #VkVertexInputAttributeDescription,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkVertexInputAttributeDescription class >> fields [

	^ #(
		(location 'uint32_t')
		(binding 'uint32_t')
		(format 'VkFormat')
		(offset 'uint32_t')
	)
]
