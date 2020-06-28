Class {
	#name : #VkPointClippingBehavior,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPointClippingBehavior class >> VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES [

	^ self on: (0)
]

{ #category : #'as yet unclassified' }
VkPointClippingBehavior class >> VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY [

	^ self on: (1)
]

{ #category : #'as yet unclassified' }
VkPointClippingBehavior class >> originalTypeName [

    ^ 'long'
]
