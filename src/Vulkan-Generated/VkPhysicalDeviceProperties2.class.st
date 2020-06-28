Class {
	#name : #VkPhysicalDeviceProperties2,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceProperties2 class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(properties 'VkPhysicalDeviceProperties')
	)
]
