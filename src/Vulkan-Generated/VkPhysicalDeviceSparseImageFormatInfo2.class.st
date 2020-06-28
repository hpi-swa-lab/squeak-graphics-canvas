Class {
	#name : #VkPhysicalDeviceSparseImageFormatInfo2,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceSparseImageFormatInfo2 class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(format 'VkFormat')
		(type 'VkImageType')
		(samples 'VkSampleCountFlags')
		(usage 'VkImageUsageFlags')
		(tiling 'VkImageTiling')
	)
]
