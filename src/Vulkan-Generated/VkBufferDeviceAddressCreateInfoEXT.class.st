Class {
	#name : #VkBufferDeviceAddressCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkBufferDeviceAddressCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(deviceAddress 'VkDeviceAddress')
	)
]
