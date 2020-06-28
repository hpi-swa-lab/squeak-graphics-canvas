Class {
	#name : #VkImageDrmFormatModifierListCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImageDrmFormatModifierListCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(drmFormatModifierCount 'uint32_t')
		(pDrmFormatModifiers 'uint64_t*')
	)
]
