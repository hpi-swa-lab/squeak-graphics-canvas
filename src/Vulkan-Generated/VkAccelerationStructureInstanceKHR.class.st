Class {
	#name : #VkAccelerationStructureInstanceKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAccelerationStructureInstanceKHR class >> fields [

	^ #(
		(transform 'VkTransformMatrixKHR')
		(instanceCustomIndex 'uint32_t')
		(mask 'uint32_t')
		(instanceShaderBindingTableRecordOffset 'uint32_t')
		(flags 'VkGeometryInstanceFlagsKHR')
		(accelerationStructureReference 'uint64_t')
	)
]
