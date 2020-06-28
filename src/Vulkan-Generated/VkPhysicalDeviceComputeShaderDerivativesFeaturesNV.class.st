Class {
	#name : #VkPhysicalDeviceComputeShaderDerivativesFeaturesNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceComputeShaderDerivativesFeaturesNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(computeDerivativeGroupQuads 'VkBool32')
		(computeDerivativeGroupLinear 'VkBool32')
	)
]
