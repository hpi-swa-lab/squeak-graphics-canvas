Class {
	#name : #VkImageMemoryBarrier,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImageMemoryBarrier class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(srcAccessMask 'VkAccessFlags')
		(dstAccessMask 'VkAccessFlags')
		(oldLayout 'VkImageLayout')
		(newLayout 'VkImageLayout')
		(srcQueueFamilyIndex 'uint32_t')
		(dstQueueFamilyIndex 'uint32_t')
		(image 'VkImage')
		(subresourceRange 'VkImageSubresourceRange')
	)
]
