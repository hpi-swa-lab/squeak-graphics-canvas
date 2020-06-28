Class {
	#name : #VkPhysicalDeviceRobustness2FeaturesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceRobustness2FeaturesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(robustBufferAccess2 'VkBool32')
		(robustImageAccess2 'VkBool32')
		(nullDescriptor 'VkBool32')
	)
]
