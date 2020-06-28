Class {
	#name : #VkImageDrmFormatModifierExplicitCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImageDrmFormatModifierExplicitCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(drmFormatModifier 'uint64_t')
		(drmFormatModifierPlaneCount 'uint32_t')
		(pPlaneLayouts 'VkSubresourceLayout*')
	)
]
