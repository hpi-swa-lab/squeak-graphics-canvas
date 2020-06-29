Class {
	#name : #VkDeviceOrHostAddressKHR,
	#superclass : #ExternalUnion,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDeviceOrHostAddressKHR class >> fields [

	^ #(
		(deviceAddress 'VkDeviceAddress')
		(hostAddress 'void*')
	)
]
