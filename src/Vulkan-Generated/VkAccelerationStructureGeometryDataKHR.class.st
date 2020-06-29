Class {
	#name : #VkAccelerationStructureGeometryDataKHR,
	#superclass : #ExternalUnion,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAccelerationStructureGeometryDataKHR class >> fields [

	^ #(
		(triangles 'VkAccelerationStructureGeometryTrianglesDataKHR')
		(aabbs 'VkAccelerationStructureGeometryAabbsDataKHR')
		(instances 'VkAccelerationStructureGeometryInstancesDataKHR')
	)
]
