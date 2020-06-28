Class {
	#name : #VkPhysicalDeviceShaderSMBuiltinsPropertiesNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceShaderSMBuiltinsPropertiesNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(shaderSMCount 'uint32_t')
		(shaderWarpsPerSM 'uint32_t')
	)
]
