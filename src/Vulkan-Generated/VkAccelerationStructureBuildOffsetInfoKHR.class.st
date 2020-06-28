Class {
	#name : #VkAccelerationStructureBuildOffsetInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAccelerationStructureBuildOffsetInfoKHR class >> fields [

	^ #(
		(primitiveCount 'uint32_t')
		(primitiveOffset 'uint32_t')
		(firstVertex 'uint32_t')
		(transformOffset 'uint32_t')
	)
]
