Class {
	#name : #VkImageSubresource,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImageSubresource class >> fields [

	^ #(
		(aspectMask 'VkImageAspectFlags')
		(mipLevel 'uint32_t')
		(arrayLayer 'uint32_t')
	)
]
