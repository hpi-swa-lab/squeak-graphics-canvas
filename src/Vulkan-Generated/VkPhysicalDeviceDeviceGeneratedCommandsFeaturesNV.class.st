Class {
	#name : #VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(deviceGeneratedCommands 'VkBool32')
	)
]
