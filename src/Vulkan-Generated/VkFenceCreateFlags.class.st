Class {
	#name : #VkFenceCreateFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkFenceCreateFlags class >> VK_FENCE_CREATE_SIGNALED_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkFenceCreateFlags class >> originalTypeName [

    ^ 'long'
]
