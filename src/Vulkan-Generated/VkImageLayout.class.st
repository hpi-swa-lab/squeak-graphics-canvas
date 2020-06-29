Class {
	#name : #VkImageLayout,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImageLayout class >> VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL [

	^ self on: (2)
]

{ #category : #'as yet unclassified' }
VkImageLayout class >> VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL [

	^ self on: (3)
]

{ #category : #'as yet unclassified' }
VkImageLayout class >> VK_IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL [

	^ self on: (4)
]

{ #category : #'as yet unclassified' }
VkImageLayout class >> VK_IMAGE_LAYOUT_GENERAL [

	^ self on: (1)
]

{ #category : #'as yet unclassified' }
VkImageLayout class >> VK_IMAGE_LAYOUT_PREINITIALIZED [

	^ self on: (8)
]

{ #category : #'as yet unclassified' }
VkImageLayout class >> VK_IMAGE_LAYOUT_PRESENT_SRC_KHR [

	^ self on: (1000001002)
]

{ #category : #'as yet unclassified' }
VkImageLayout class >> VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL [

	^ self on: (5)
]

{ #category : #'as yet unclassified' }
VkImageLayout class >> VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL [

	^ self on: (7)
]

{ #category : #'as yet unclassified' }
VkImageLayout class >> VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL [

	^ self on: (6)
]

{ #category : #'as yet unclassified' }
VkImageLayout class >> VK_IMAGE_LAYOUT_UNDEFINED [

	^ self on: (0)
]

{ #category : #'as yet unclassified' }
VkImageLayout class >> originalTypeName [

    ^ 'long'
]
