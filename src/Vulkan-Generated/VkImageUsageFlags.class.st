Class {
	#name : #VkImageUsageFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImageUsageFlags class >> VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT [

	^ self on: (1 bitShift: 4)
]

{ #category : #'as yet unclassified' }
VkImageUsageFlags class >> VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT [

	^ self on: (1 bitShift: 5)
]

{ #category : #'as yet unclassified' }
VkImageUsageFlags class >> VK_IMAGE_USAGE_INPUT_ATTACHMENT_BIT [

	^ self on: (1 bitShift: 7)
]

{ #category : #'as yet unclassified' }
VkImageUsageFlags class >> VK_IMAGE_USAGE_SAMPLED_BIT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkImageUsageFlags class >> VK_IMAGE_USAGE_STORAGE_BIT [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkImageUsageFlags class >> VK_IMAGE_USAGE_TRANSFER_DST_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkImageUsageFlags class >> VK_IMAGE_USAGE_TRANSFER_SRC_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkImageUsageFlags class >> VK_IMAGE_USAGE_TRANSIENT_ATTACHMENT_BIT [

	^ self on: (1 bitShift: 6)
]

{ #category : #'as yet unclassified' }
VkImageUsageFlags class >> originalTypeName [

    ^ 'long'
]
