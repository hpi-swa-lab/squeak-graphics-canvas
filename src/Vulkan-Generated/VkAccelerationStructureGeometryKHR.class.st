Class {
	#name : #VkAccelerationStructureGeometryKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAccelerationStructureGeometryKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(geometryType 'VkGeometryTypeKHR')
		(geometry 'VkAccelerationStructureGeometryDataKHR')
		(flags 'VkGeometryFlagsKHR')
	)
]
