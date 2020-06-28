Class {
	#name : #VkSparseImageFormatProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSparseImageFormatProperties class >> fields [

	^ #(
		(aspectMask 'VkImageAspectFlags')
		(imageGranularity 'VkExtent3D')
		(flags 'VkSparseImageFormatFlags')
	)
]
