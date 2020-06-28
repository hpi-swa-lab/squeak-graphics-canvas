Class {
	#name : #VkPhysicalDeviceScalarBlockLayoutFeatures,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceScalarBlockLayoutFeatures class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(scalarBlockLayout 'VkBool32')
	)
]
