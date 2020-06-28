Class {
	#name : #VkPhysicalDeviceShaderCoreProperties2AMD,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceShaderCoreProperties2AMD class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(shaderCoreFeatures 'VkShaderCorePropertiesFlagsAMD')
		(activeComputeUnitCount 'uint32_t')
	)
]
