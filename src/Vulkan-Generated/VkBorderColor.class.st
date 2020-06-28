Class {
	#name : #VkBorderColor,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkBorderColor class >> VK_BORDER_COLOR_FLOAT_OPAQUE_BLACK [

	^ self on: (2)
]

{ #category : #'as yet unclassified' }
VkBorderColor class >> VK_BORDER_COLOR_FLOAT_OPAQUE_WHITE [

	^ self on: (4)
]

{ #category : #'as yet unclassified' }
VkBorderColor class >> VK_BORDER_COLOR_FLOAT_TRANSPARENT_BLACK [

	^ self on: (0)
]

{ #category : #'as yet unclassified' }
VkBorderColor class >> VK_BORDER_COLOR_INT_OPAQUE_BLACK [

	^ self on: (3)
]

{ #category : #'as yet unclassified' }
VkBorderColor class >> VK_BORDER_COLOR_INT_OPAQUE_WHITE [

	^ self on: (5)
]

{ #category : #'as yet unclassified' }
VkBorderColor class >> VK_BORDER_COLOR_INT_TRANSPARENT_BLACK [

	^ self on: (1)
]

{ #category : #'as yet unclassified' }
VkBorderColor class >> originalTypeName [

    ^ 'long'
]
