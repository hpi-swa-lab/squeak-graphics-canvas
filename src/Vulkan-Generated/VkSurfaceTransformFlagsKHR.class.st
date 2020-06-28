Class {
	#name : #VkSurfaceTransformFlagsKHR,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSurfaceTransformFlagsKHR class >> VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_BIT_KHR [

	^ self on: (1 bitShift: 4)
]

{ #category : #'as yet unclassified' }
VkSurfaceTransformFlagsKHR class >> VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_180_BIT_KHR [

	^ self on: (1 bitShift: 6)
]

{ #category : #'as yet unclassified' }
VkSurfaceTransformFlagsKHR class >> VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_270_BIT_KHR [

	^ self on: (1 bitShift: 7)
]

{ #category : #'as yet unclassified' }
VkSurfaceTransformFlagsKHR class >> VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_90_BIT_KHR [

	^ self on: (1 bitShift: 5)
]

{ #category : #'as yet unclassified' }
VkSurfaceTransformFlagsKHR class >> VK_SURFACE_TRANSFORM_IDENTITY_BIT_KHR [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkSurfaceTransformFlagsKHR class >> VK_SURFACE_TRANSFORM_INHERIT_BIT_KHR [

	^ self on: (1 bitShift: 8)
]

{ #category : #'as yet unclassified' }
VkSurfaceTransformFlagsKHR class >> VK_SURFACE_TRANSFORM_ROTATE_180_BIT_KHR [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkSurfaceTransformFlagsKHR class >> VK_SURFACE_TRANSFORM_ROTATE_270_BIT_KHR [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkSurfaceTransformFlagsKHR class >> VK_SURFACE_TRANSFORM_ROTATE_90_BIT_KHR [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkSurfaceTransformFlagsKHR class >> originalTypeName [

    ^ 'long'
]
