Class {
	#name : #VkExternalMemoryProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExternalMemoryProperties class >> fields [

	^ #(
		(externalMemoryFeatures 'VkExternalMemoryFeatureFlags')
		(exportFromImportedHandleTypes 'VkExternalMemoryHandleTypeFlags')
		(compatibleHandleTypes 'VkExternalMemoryHandleTypeFlags')
	)
]
