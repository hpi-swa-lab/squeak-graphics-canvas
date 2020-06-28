Class {
	#name : #VkExternalSemaphoreFeatureFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExternalSemaphoreFeatureFlags class >> VK_EXTERNAL_SEMAPHORE_FEATURE_EXPORTABLE_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkExternalSemaphoreFeatureFlags class >> VK_EXTERNAL_SEMAPHORE_FEATURE_IMPORTABLE_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkExternalSemaphoreFeatureFlags class >> originalTypeName [

    ^ 'long'
]
