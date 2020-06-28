Class {
	#name : #VkBufferMemoryBarrier,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkBufferMemoryBarrier class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(srcAccessMask 'VkAccessFlags')
		(dstAccessMask 'VkAccessFlags')
		(srcQueueFamilyIndex 'uint32_t')
		(dstQueueFamilyIndex 'uint32_t')
		(buffer 'VkBuffer')
		(offset 'VkDeviceSize')
		(size 'VkDeviceSize')
	)
]
