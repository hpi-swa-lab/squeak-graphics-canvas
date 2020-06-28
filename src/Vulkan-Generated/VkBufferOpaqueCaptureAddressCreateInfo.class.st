Class {
	#name : #VkBufferOpaqueCaptureAddressCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkBufferOpaqueCaptureAddressCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(opaqueCaptureAddress 'uint64_t')
	)
]
