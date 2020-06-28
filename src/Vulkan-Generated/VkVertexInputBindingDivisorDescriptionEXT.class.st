Class {
	#name : #VkVertexInputBindingDivisorDescriptionEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkVertexInputBindingDivisorDescriptionEXT class >> fields [

	^ #(
		(binding 'uint32_t')
		(divisor 'uint32_t')
	)
]
