Class {
	#name : #VkDrmFormatModifierPropertiesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDrmFormatModifierPropertiesEXT class >> fields [

	^ #(
		(drmFormatModifier 'uint64_t')
		(drmFormatModifierPlaneCount 'uint32_t')
		(drmFormatModifierTilingFeatures 'VkFormatFeatureFlags')
	)
]
