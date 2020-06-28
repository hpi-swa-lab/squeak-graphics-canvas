Class {
	#name : #VkResolveModeFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkResolveModeFlags class >> VK_RESOLVE_MODE_AVERAGE_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkResolveModeFlags class >> VK_RESOLVE_MODE_MAX_BIT [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkResolveModeFlags class >> VK_RESOLVE_MODE_MIN_BIT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkResolveModeFlags class >> VK_RESOLVE_MODE_NONE [

	^ self on: (0)
]

{ #category : #'as yet unclassified' }
VkResolveModeFlags class >> VK_RESOLVE_MODE_SAMPLE_ZERO_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkResolveModeFlags class >> originalTypeName [

    ^ 'long'
]
