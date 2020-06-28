Class {
	#name : #VkBufferCopy,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkBufferCopy class >> fields [

	^ #(
		(srcOffset 'VkDeviceSize')
		(dstOffset 'VkDeviceSize')
		(size 'VkDeviceSize')
	)
]
