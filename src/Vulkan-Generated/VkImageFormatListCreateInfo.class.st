Class {
	#name : #VkImageFormatListCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImageFormatListCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(viewFormatCount 'uint32_t')
		(pViewFormats 'VkFormat*')
	)
]
