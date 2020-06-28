Class {
	#name : #VkDeviceGroupCommandBufferBeginInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDeviceGroupCommandBufferBeginInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(deviceMask 'uint32_t')
	)
]
