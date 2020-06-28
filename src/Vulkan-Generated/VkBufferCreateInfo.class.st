Class {
	#name : #VkBufferCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkBufferCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkBufferCreateFlags')
		(size 'VkDeviceSize')
		(usage 'VkBufferUsageFlags')
		(sharingMode 'VkSharingMode')
		(queueFamilyIndexCount 'uint32_t')
		(pQueueFamilyIndices 'uint32_t*')
	)
]
