Class {
	#name : #VkExternalMemoryFeatureFlagsNV,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExternalMemoryFeatureFlagsNV class >> VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_NV [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkExternalMemoryFeatureFlagsNV class >> VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_NV [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkExternalMemoryFeatureFlagsNV class >> VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_NV [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkExternalMemoryFeatureFlagsNV class >> originalTypeName [

    ^ 'long'
]
