Class {
	#name : #VkPhysicalDeviceCooperativeMatrixFeaturesNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceCooperativeMatrixFeaturesNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(cooperativeMatrix 'VkBool32')
		(cooperativeMatrixRobustBufferAccess 'VkBool32')
	)
]
