Class {
	#name : #VkImageBlit,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImageBlit class >> fields [

	^ #(
		(srcSubresource 'VkImageSubresourceLayers')
		(srcOffsets 'VkOffset3D[2]')
		(dstSubresource 'VkImageSubresourceLayers')
		(dstOffsets 'VkOffset3D[2]')
	)
]
