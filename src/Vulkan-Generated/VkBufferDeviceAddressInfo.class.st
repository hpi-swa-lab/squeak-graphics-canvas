Class {
	#name : #VkBufferDeviceAddressInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkBufferDeviceAddressInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(buffer 'VkBuffer')
	)
]
