Class {
	#name : #VkPhysicalDeviceShaderDrawParametersFeatures,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceShaderDrawParametersFeatures class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(shaderDrawParameters 'VkBool32')
	)
]
