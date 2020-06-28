Class {
	#name : #VkPhysicalDeviceImageFormatInfo2,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceImageFormatInfo2 class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(format 'VkFormat')
		(type 'VkImageType')
		(tiling 'VkImageTiling')
		(usage 'VkImageUsageFlags')
		(flags 'VkImageCreateFlags')
	)
]
