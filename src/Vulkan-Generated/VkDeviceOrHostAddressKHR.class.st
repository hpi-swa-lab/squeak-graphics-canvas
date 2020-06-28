Class {
	#name : #VkDeviceOrHostAddressKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDeviceOrHostAddressKHR class >> fields [

	^ #(
		(deviceAddress 'VkDeviceAddress')
		(hostAddress 'void*')
	)
]
