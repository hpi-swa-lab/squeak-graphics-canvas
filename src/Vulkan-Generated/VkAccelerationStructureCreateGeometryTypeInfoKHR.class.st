Class {
	#name : #VkAccelerationStructureCreateGeometryTypeInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAccelerationStructureCreateGeometryTypeInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(geometryType 'VkGeometryTypeKHR')
		(maxPrimitiveCount 'uint32_t')
		(indexType 'VkIndexType')
		(maxVertexCount 'uint32_t')
		(vertexFormat 'VkFormat')
		(allowsTransforms 'VkBool32')
	)
]
