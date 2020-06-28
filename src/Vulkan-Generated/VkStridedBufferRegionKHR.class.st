Class {
	#name : #VkStridedBufferRegionKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkStridedBufferRegionKHR class >> fields [

	^ #(
		(buffer 'VkBuffer')
		(offset 'VkDeviceSize')
		(stride 'VkDeviceSize')
		(size 'VkDeviceSize')
	)
]
