Class {
	#name : #VkExternalFenceFeatureFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExternalFenceFeatureFlags class >> VK_EXTERNAL_FENCE_FEATURE_EXPORTABLE_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkExternalFenceFeatureFlags class >> VK_EXTERNAL_FENCE_FEATURE_IMPORTABLE_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkExternalFenceFeatureFlags class >> originalTypeName [

    ^ 'long'
]
