Class {
	#name : #VkPhysicalDeviceExternalBufferInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceExternalBufferInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkBufferCreateFlags')
		(usage 'VkBufferUsageFlags')
		(handleType 'VkExternalMemoryHandleTypeFlags')
	)
]
