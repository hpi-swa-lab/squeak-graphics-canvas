Class {
	#name : #VkPhysicalDeviceShaderImageFootprintFeaturesNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceShaderImageFootprintFeaturesNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(imageFootprint 'VkBool32')
	)
]
