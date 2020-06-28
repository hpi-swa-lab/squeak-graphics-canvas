Class {
	#name : #VkPhysicalDeviceUniformBufferStandardLayoutFeatures,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceUniformBufferStandardLayoutFeatures class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(uniformBufferStandardLayout 'VkBool32')
	)
]
