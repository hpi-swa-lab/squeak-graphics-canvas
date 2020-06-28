Class {
	#name : #VkPhysicalDeviceTimelineSemaphoreFeatures,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceTimelineSemaphoreFeatures class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(timelineSemaphore 'VkBool32')
	)
]
