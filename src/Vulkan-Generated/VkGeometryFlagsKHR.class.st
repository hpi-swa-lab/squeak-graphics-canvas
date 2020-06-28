Class {
	#name : #VkGeometryFlagsKHR,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkGeometryFlagsKHR class >> VK_GEOMETRY_NO_DUPLICATE_ANY_HIT_INVOCATION_BIT_KHR [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkGeometryFlagsKHR class >> VK_GEOMETRY_OPAQUE_BIT_KHR [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkGeometryFlagsKHR class >> originalTypeName [

    ^ 'long'
]
