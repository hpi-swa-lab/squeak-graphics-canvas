Class {
	#name : #VkPhysicalDeviceTimelineSemaphoreProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceTimelineSemaphoreProperties class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(maxTimelineSemaphoreValueDifference 'uint64_t')
	)
]
