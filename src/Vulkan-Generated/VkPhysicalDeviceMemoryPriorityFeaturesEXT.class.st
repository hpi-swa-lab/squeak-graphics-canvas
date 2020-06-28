Class {
	#name : #VkPhysicalDeviceMemoryPriorityFeaturesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceMemoryPriorityFeaturesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(memoryPriority 'VkBool32')
	)
]
