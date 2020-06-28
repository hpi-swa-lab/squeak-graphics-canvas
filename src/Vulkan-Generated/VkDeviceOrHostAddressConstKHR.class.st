Class {
	#name : #VkDeviceOrHostAddressConstKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDeviceOrHostAddressConstKHR class >> fields [

	^ #(
		(deviceAddress 'VkDeviceAddress')
		(hostAddress 'void*')
	)
]
