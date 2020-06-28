Class {
	#name : #VkPhysicalDeviceMeshShaderPropertiesNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceMeshShaderPropertiesNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(maxDrawMeshTasksCount 'uint32_t')
		(maxTaskWorkGroupInvocations 'uint32_t')
		(maxTaskWorkGroupSize 'uint32_t')
		(maxTaskTotalMemorySize 'uint32_t')
		(maxTaskOutputCount 'uint32_t')
		(maxMeshWorkGroupInvocations 'uint32_t')
		(maxMeshWorkGroupSize 'uint32_t')
		(maxMeshTotalMemorySize 'uint32_t')
		(maxMeshOutputVertices 'uint32_t')
		(maxMeshOutputPrimitives 'uint32_t')
		(maxMeshMultiviewViewCount 'uint32_t')
		(meshOutputPerVertexGranularity 'uint32_t')
		(meshOutputPerPrimitiveGranularity 'uint32_t')
	)
]
