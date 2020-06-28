Class {
	#name : #VkSubresourceLayout,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSubresourceLayout class >> fields [

	^ #(
		(offset 'VkDeviceSize')
		(size 'VkDeviceSize')
		(rowPitch 'VkDeviceSize')
		(arrayPitch 'VkDeviceSize')
		(depthPitch 'VkDeviceSize')
	)
]
