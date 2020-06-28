Class {
	#name : #VkCompositeAlphaFlagsKHR,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkCompositeAlphaFlagsKHR class >> VK_COMPOSITE_ALPHA_INHERIT_BIT_KHR [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkCompositeAlphaFlagsKHR class >> VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkCompositeAlphaFlagsKHR class >> VK_COMPOSITE_ALPHA_POST_MULTIPLIED_BIT_KHR [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkCompositeAlphaFlagsKHR class >> VK_COMPOSITE_ALPHA_PRE_MULTIPLIED_BIT_KHR [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkCompositeAlphaFlagsKHR class >> originalTypeName [

    ^ 'long'
]
