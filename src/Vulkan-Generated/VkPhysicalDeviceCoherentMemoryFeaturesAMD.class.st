Class {
	#name : #VkPhysicalDeviceCoherentMemoryFeaturesAMD,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceCoherentMemoryFeaturesAMD class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(deviceCoherentMemory 'VkBool32')
	)
]
