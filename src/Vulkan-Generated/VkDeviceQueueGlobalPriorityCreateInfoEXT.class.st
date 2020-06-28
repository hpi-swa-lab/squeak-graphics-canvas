Class {
	#name : #VkDeviceQueueGlobalPriorityCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDeviceQueueGlobalPriorityCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(globalPriority 'VkQueueGlobalPriorityEXT')
	)
]
