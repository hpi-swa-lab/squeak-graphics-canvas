Class {
	#name : #VkPhysicalDeviceProtectedMemoryFeatures,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceProtectedMemoryFeatures class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(protectedMemory 'VkBool32')
	)
]
