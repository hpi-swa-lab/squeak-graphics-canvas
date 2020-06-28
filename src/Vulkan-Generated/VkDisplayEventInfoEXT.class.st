Class {
	#name : #VkDisplayEventInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDisplayEventInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(displayEvent 'VkDisplayEventTypeEXT')
	)
]
