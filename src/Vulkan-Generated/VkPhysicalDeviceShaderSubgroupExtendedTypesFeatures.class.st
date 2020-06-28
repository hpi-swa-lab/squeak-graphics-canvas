Class {
	#name : #VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(shaderSubgroupExtendedTypes 'VkBool32')
	)
]
