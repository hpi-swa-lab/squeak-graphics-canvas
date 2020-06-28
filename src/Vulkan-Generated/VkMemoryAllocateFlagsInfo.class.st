Class {
	#name : #VkMemoryAllocateFlagsInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkMemoryAllocateFlagsInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkMemoryAllocateFlags')
		(deviceMask 'uint32_t')
	)
]
