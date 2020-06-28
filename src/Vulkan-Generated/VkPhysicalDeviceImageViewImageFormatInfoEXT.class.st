Class {
	#name : #VkPhysicalDeviceImageViewImageFormatInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceImageViewImageFormatInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(imageViewType 'VkImageViewType')
	)
]
