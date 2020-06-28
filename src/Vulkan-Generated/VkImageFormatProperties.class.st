Class {
	#name : #VkImageFormatProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImageFormatProperties class >> fields [

	^ #(
		(maxExtent 'VkExtent3D')
		(maxMipLevels 'uint32_t')
		(maxArrayLayers 'uint32_t')
		(sampleCounts 'VkSampleCountFlags')
		(maxResourceSize 'VkDeviceSize')
	)
]
