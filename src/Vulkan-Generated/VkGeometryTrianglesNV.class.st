Class {
	#name : #VkGeometryTrianglesNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkGeometryTrianglesNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(vertexData 'VkBuffer')
		(vertexOffset 'VkDeviceSize')
		(vertexCount 'uint32_t')
		(vertexStride 'VkDeviceSize')
		(vertexFormat 'VkFormat')
		(indexData 'VkBuffer')
		(indexOffset 'VkDeviceSize')
		(indexCount 'uint32_t')
		(indexType 'VkIndexType')
		(transformData 'VkBuffer')
		(transformOffset 'VkDeviceSize')
	)
]
