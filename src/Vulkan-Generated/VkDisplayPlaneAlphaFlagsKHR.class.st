Class {
	#name : #VkDisplayPlaneAlphaFlagsKHR,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDisplayPlaneAlphaFlagsKHR class >> VK_DISPLAY_PLANE_ALPHA_GLOBAL_BIT_KHR [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkDisplayPlaneAlphaFlagsKHR class >> VK_DISPLAY_PLANE_ALPHA_OPAQUE_BIT_KHR [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkDisplayPlaneAlphaFlagsKHR class >> VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_BIT_KHR [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkDisplayPlaneAlphaFlagsKHR class >> VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_PREMULTIPLIED_BIT_KHR [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkDisplayPlaneAlphaFlagsKHR class >> originalTypeName [

    ^ 'long'
]
