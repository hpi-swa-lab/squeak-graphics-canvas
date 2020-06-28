Class {
	#name : #VkMemoryBarrier,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkMemoryBarrier class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(srcAccessMask 'VkAccessFlags')
		(dstAccessMask 'VkAccessFlags')
	)
]
