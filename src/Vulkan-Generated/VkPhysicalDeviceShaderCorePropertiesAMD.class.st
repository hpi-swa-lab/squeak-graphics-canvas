Class {
	#name : #VkPhysicalDeviceShaderCorePropertiesAMD,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceShaderCorePropertiesAMD class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(shaderEngineCount 'uint32_t')
		(shaderArraysPerEngineCount 'uint32_t')
		(computeUnitsPerShaderArray 'uint32_t')
		(simdPerComputeUnit 'uint32_t')
		(wavefrontsPerSimd 'uint32_t')
		(wavefrontSize 'uint32_t')
		(sgprsPerSimd 'uint32_t')
		(minSgprAllocation 'uint32_t')
		(maxSgprAllocation 'uint32_t')
		(sgprAllocationGranularity 'uint32_t')
		(vgprsPerSimd 'uint32_t')
		(minVgprAllocation 'uint32_t')
		(maxVgprAllocation 'uint32_t')
		(vgprAllocationGranularity 'uint32_t')
	)
]
