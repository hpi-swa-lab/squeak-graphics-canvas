Class {
	#name : #VkPhysicalDeviceVariablePointersFeatures,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceVariablePointersFeatures class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(variablePointersStorageBuffer 'VkBool32')
		(variablePointers 'VkBool32')
	)
]
