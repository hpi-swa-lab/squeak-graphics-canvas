Class {
	#name : #VkClearAttachment,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkClearAttachment class >> fields [

	^ #(
		(aspectMask 'VkImageAspectFlags')
		(colorAttachment 'uint32_t')
		(clearValue 'VkClearValue')
	)
]
