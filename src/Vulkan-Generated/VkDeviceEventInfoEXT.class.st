Class {
	#name : #VkDeviceEventInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDeviceEventInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(deviceEvent 'VkDeviceEventTypeEXT')
	)
]
