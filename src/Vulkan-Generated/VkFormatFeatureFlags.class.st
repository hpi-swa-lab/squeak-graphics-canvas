Class {
	#name : #VkFormatFeatureFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkFormatFeatureFlags class >> VK_FORMAT_FEATURE_BLIT_DST_BIT [

	^ self on: (1 bitShift: 11)
]

{ #category : #'as yet unclassified' }
VkFormatFeatureFlags class >> VK_FORMAT_FEATURE_BLIT_SRC_BIT [

	^ self on: (1 bitShift: 10)
]

{ #category : #'as yet unclassified' }
VkFormatFeatureFlags class >> VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT [

	^ self on: (1 bitShift: 7)
]

{ #category : #'as yet unclassified' }
VkFormatFeatureFlags class >> VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT [

	^ self on: (1 bitShift: 8)
]

{ #category : #'as yet unclassified' }
VkFormatFeatureFlags class >> VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT [

	^ self on: (1 bitShift: 9)
]

{ #category : #'as yet unclassified' }
VkFormatFeatureFlags class >> VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkFormatFeatureFlags class >> VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT [

	^ self on: (1 bitShift: 12)
]

{ #category : #'as yet unclassified' }
VkFormatFeatureFlags class >> VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkFormatFeatureFlags class >> VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkFormatFeatureFlags class >> VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT [

	^ self on: (1 bitShift: 5)
]

{ #category : #'as yet unclassified' }
VkFormatFeatureFlags class >> VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT [

	^ self on: (1 bitShift: 4)
]

{ #category : #'as yet unclassified' }
VkFormatFeatureFlags class >> VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkFormatFeatureFlags class >> VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT [

	^ self on: (1 bitShift: 6)
]

{ #category : #'as yet unclassified' }
VkFormatFeatureFlags class >> originalTypeName [

    ^ 'long'
]
