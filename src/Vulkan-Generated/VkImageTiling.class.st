Class {
	#name : #VkImageTiling,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImageTiling class >> VK_IMAGE_TILING_LINEAR [

	^ self on: (1)
]

{ #category : #'as yet unclassified' }
VkImageTiling class >> VK_IMAGE_TILING_OPTIMAL [

	^ self on: (0)
]

{ #category : #'as yet unclassified' }
VkImageTiling class >> originalTypeName [

    ^ 'long'
]
