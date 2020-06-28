Class {
	#name : #VkPhysicalDeviceProtectedMemoryProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceProtectedMemoryProperties class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(protectedNoFault 'VkBool32')
	)
]
