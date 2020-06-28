Class {
	#name : #VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(shaderIntegerFunctions2 'VkBool32')
	)
]
