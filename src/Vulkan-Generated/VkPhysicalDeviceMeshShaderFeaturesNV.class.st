Class {
	#name : #VkPhysicalDeviceMeshShaderFeaturesNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceMeshShaderFeaturesNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(taskShader 'VkBool32')
		(meshShader 'VkBool32')
	)
]
