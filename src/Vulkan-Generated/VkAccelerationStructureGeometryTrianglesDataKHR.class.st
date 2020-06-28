Class {
	#name : #VkAccelerationStructureGeometryTrianglesDataKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAccelerationStructureGeometryTrianglesDataKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(vertexFormat 'VkFormat')
		(vertexData 'VkDeviceOrHostAddressConstKHR')
		(vertexStride 'VkDeviceSize')
		(indexType 'VkIndexType')
		(indexData 'VkDeviceOrHostAddressConstKHR')
		(transformData 'VkDeviceOrHostAddressConstKHR')
	)
]
