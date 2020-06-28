Class {
	#name : #VkPhysicalDeviceMemoryProperties2,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceMemoryProperties2 class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(memoryProperties 'VkPhysicalDeviceMemoryProperties')
	)
]
