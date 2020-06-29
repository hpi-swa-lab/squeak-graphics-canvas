Class {
	#name : #VkDeviceOrHostAddressConstKHR,
	#superclass : #ExternalUnion,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDeviceOrHostAddressConstKHR class >> fields [

	^ #(
		(deviceAddress 'VkDeviceAddress')
		(hostAddress 'void*')
	)
]
