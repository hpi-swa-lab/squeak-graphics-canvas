Class {
	#name : #VkPhysicalDeviceCooperativeMatrixPropertiesNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceCooperativeMatrixPropertiesNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(cooperativeMatrixSupportedStages 'VkShaderStageFlags')
	)
]
