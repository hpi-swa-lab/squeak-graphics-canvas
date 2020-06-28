Class {
	#name : #VkQueueFamilyProperties2,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkQueueFamilyProperties2 class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(queueFamilyProperties 'VkQueueFamilyProperties')
	)
]
