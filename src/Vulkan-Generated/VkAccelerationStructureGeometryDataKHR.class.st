Class {
	#name : #VkAccelerationStructureGeometryDataKHR,
	#superclass : #ExternalStructure,
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
