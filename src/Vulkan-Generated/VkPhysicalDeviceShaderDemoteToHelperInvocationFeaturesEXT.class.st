Class {
	#name : #VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(shaderDemoteToHelperInvocation 'VkBool32')
	)
]
