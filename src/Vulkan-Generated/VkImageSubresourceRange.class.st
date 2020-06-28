Class {
	#name : #VkImageSubresourceRange,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImageSubresourceRange class >> fields [

	^ #(
		(aspectMask 'VkImageAspectFlags')
		(baseMipLevel 'uint32_t')
		(levelCount 'uint32_t')
		(baseArrayLayer 'uint32_t')
		(layerCount 'uint32_t')
	)
]
