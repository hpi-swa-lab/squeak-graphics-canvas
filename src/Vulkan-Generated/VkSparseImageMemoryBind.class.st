Class {
	#name : #VkSparseImageMemoryBind,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSparseImageMemoryBind class >> fields [

	^ #(
		(subresource 'VkImageSubresource')
		(offset 'VkOffset3D')
		(extent 'VkExtent3D')
		(memory 'VkDeviceMemory')
		(memoryOffset 'VkDeviceSize')
		(flags 'VkSparseMemoryBindFlags')
	)
]
