Class {
	#name : #VkCommandBufferAllocateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkCommandBufferAllocateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(commandPool 'VkCommandPool')
		(level 'VkCommandBufferLevel')
		(commandBufferCount 'uint32_t')
	)
]
