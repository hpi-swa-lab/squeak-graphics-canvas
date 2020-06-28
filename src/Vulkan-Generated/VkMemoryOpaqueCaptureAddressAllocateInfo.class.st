Class {
	#name : #VkMemoryOpaqueCaptureAddressAllocateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkMemoryOpaqueCaptureAddressAllocateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(opaqueCaptureAddress 'uint64_t')
	)
]
