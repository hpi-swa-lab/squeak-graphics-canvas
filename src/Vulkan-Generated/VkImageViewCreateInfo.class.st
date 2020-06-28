Class {
	#name : #VkImageViewCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImageViewCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkImageViewCreateFlags')
		(image 'VkImage')
		(viewType 'VkImageViewType')
		(format 'VkFormat')
		(components 'VkComponentMapping')
		(subresourceRange 'VkImageSubresourceRange')
	)
]
