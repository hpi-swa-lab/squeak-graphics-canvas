Class {
	#name : #VkCullModeFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkCullModeFlags class >> VK_CULL_MODE_BACK_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkCullModeFlags class >> VK_CULL_MODE_FRONT_AND_BACK [

	^ self on: (0x00000003)
]

{ #category : #'as yet unclassified' }
VkCullModeFlags class >> VK_CULL_MODE_FRONT_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkCullModeFlags class >> VK_CULL_MODE_NONE [

	^ self on: (0)
]

{ #category : #'as yet unclassified' }
VkCullModeFlags class >> originalTypeName [

    ^ 'long'
]
