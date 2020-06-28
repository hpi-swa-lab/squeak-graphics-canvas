Class {
	#name : #VkImageSubresourceLayers,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImageSubresourceLayers class >> fields [

	^ #(
		(aspectMask 'VkImageAspectFlags')
		(mipLevel 'uint32_t')
		(baseArrayLayer 'uint32_t')
		(layerCount 'uint32_t')
	)
]
