Class {
	#name : #VkDeviceGroupBindSparseInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDeviceGroupBindSparseInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(resourceDeviceIndex 'uint32_t')
		(memoryDeviceIndex 'uint32_t')
	)
]
