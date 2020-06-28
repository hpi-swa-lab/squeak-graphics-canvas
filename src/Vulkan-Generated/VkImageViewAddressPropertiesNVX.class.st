Class {
	#name : #VkImageViewAddressPropertiesNVX,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImageViewAddressPropertiesNVX class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(deviceAddress 'VkDeviceAddress')
		(size 'VkDeviceSize')
	)
]
