Class {
	#name : #VkImageAspectFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImageAspectFlags class >> VK_IMAGE_ASPECT_COLOR_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkImageAspectFlags class >> VK_IMAGE_ASPECT_DEPTH_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkImageAspectFlags class >> VK_IMAGE_ASPECT_METADATA_BIT [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkImageAspectFlags class >> VK_IMAGE_ASPECT_STENCIL_BIT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkImageAspectFlags class >> originalTypeName [

    ^ 'long'
]
