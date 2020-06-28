Class {
	#name : #VkMemoryRequirements,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkMemoryRequirements class >> fields [

	^ #(
		(size 'VkDeviceSize')
		(alignment 'VkDeviceSize')
		(memoryTypeBits 'uint32_t')
	)
]
