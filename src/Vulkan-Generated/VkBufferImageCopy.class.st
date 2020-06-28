Class {
	#name : #VkBufferImageCopy,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkBufferImageCopy class >> fields [

	^ #(
		(bufferOffset 'VkDeviceSize')
		(bufferRowLength 'uint32_t')
		(bufferImageHeight 'uint32_t')
		(imageSubresource 'VkImageSubresourceLayers')
		(imageOffset 'VkOffset3D')
		(imageExtent 'VkExtent3D')
	)
]
