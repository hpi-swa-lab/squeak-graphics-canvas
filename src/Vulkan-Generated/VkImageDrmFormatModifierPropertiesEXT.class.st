Class {
	#name : #VkImageDrmFormatModifierPropertiesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImageDrmFormatModifierPropertiesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(drmFormatModifier 'uint64_t')
	)
]
