Class {
	#name : #VkSparseImageMemoryRequirements,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSparseImageMemoryRequirements class >> fields [

	^ #(
		(formatProperties 'VkSparseImageFormatProperties')
		(imageMipTailFirstLod 'uint32_t')
		(imageMipTailSize 'VkDeviceSize')
		(imageMipTailOffset 'VkDeviceSize')
		(imageMipTailStride 'VkDeviceSize')
	)
]
