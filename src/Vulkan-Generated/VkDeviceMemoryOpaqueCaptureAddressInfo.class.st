Class {
	#name : #VkDeviceMemoryOpaqueCaptureAddressInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDeviceMemoryOpaqueCaptureAddressInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(memory 'VkDeviceMemory')
	)
]
