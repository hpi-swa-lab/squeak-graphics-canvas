Class {
	#name : #VkBindBufferMemoryDeviceGroupInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkBindBufferMemoryDeviceGroupInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(deviceIndexCount 'uint32_t')
		(pDeviceIndices 'uint32_t*')
	)
]
