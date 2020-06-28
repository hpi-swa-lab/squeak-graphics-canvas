Class {
	#name : #VkGeometryInstanceFlagsKHR,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkGeometryInstanceFlagsKHR class >> VK_GEOMETRY_INSTANCE_FORCE_NO_OPAQUE_BIT_KHR [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkGeometryInstanceFlagsKHR class >> VK_GEOMETRY_INSTANCE_FORCE_OPAQUE_BIT_KHR [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkGeometryInstanceFlagsKHR class >> VK_GEOMETRY_INSTANCE_TRIANGLE_FACING_CULL_DISABLE_BIT_KHR [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkGeometryInstanceFlagsKHR class >> VK_GEOMETRY_INSTANCE_TRIANGLE_FRONT_COUNTERCLOCKWISE_BIT_KHR [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkGeometryInstanceFlagsKHR class >> originalTypeName [

    ^ 'long'
]
