Class {
	#name : #VkPhysicalDeviceShaderSMBuiltinsFeaturesNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceShaderSMBuiltinsFeaturesNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(shaderSMBuiltins 'VkBool32')
	)
]
