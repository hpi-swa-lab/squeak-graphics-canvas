Class {
	#name : #VkPeerMemoryFeatureFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPeerMemoryFeatureFlags class >> VK_PEER_MEMORY_FEATURE_COPY_DST_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkPeerMemoryFeatureFlags class >> VK_PEER_MEMORY_FEATURE_COPY_SRC_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkPeerMemoryFeatureFlags class >> VK_PEER_MEMORY_FEATURE_GENERIC_DST_BIT [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkPeerMemoryFeatureFlags class >> VK_PEER_MEMORY_FEATURE_GENERIC_SRC_BIT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkPeerMemoryFeatureFlags class >> originalTypeName [

    ^ 'long'
]
