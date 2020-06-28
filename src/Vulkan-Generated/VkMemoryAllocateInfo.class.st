Class {
	#name : #VkMemoryAllocateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkMemoryAllocateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(allocationSize 'VkDeviceSize')
		(memoryTypeIndex 'uint32_t')
	)
]
