Class {
	#name : #VkPipelineVertexInputDivisorStateCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineVertexInputDivisorStateCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(vertexBindingDivisorCount 'uint32_t')
		(pVertexBindingDivisors 'VkVertexInputBindingDivisorDescriptionEXT*')
	)
]
