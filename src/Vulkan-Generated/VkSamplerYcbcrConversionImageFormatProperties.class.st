Class {
	#name : #VkSamplerYcbcrConversionImageFormatProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSamplerYcbcrConversionImageFormatProperties class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(combinedImageSamplerDescriptorCount 'uint32_t')
	)
]
