Class {
	#name : #VkAccelerationStructureInfoNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAccelerationStructureInfoNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(type 'VkAccelerationStructureTypeNV')
		(flags 'VkBuildAccelerationStructureFlagsNV')
		(instanceCount 'uint32_t')
		(geometryCount 'uint32_t')
		(pGeometries 'VkGeometryNV*')
	)
]
