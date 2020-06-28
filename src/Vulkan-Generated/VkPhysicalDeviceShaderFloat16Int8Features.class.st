Class {
	#name : #VkPhysicalDeviceShaderFloat16Int8Features,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceShaderFloat16Int8Features class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(shaderFloat16 'VkBool32')
		(shaderInt8 'VkBool32')
	)
]
