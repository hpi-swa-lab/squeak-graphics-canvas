Class {
	#name : #VkExternalImageFormatPropertiesNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExternalImageFormatPropertiesNV class >> fields [

	^ #(
		(imageFormatProperties 'VkImageFormatProperties')
		(externalMemoryFeatures 'VkExternalMemoryFeatureFlagsNV')
		(exportFromImportedHandleTypes 'VkExternalMemoryHandleTypeFlagsNV')
		(compatibleHandleTypes 'VkExternalMemoryHandleTypeFlagsNV')
	)
]
