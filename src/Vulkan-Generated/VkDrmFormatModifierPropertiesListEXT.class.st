Class {
	#name : #VkDrmFormatModifierPropertiesListEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDrmFormatModifierPropertiesListEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(drmFormatModifierCount 'uint32_t')
		(pDrmFormatModifierProperties 'VkDrmFormatModifierPropertiesEXT*')
	)
]
