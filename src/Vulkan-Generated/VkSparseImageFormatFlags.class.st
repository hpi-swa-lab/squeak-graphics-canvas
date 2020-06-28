Class {
	#name : #VkSparseImageFormatFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSparseImageFormatFlags class >> VK_SPARSE_IMAGE_FORMAT_ALIGNED_MIP_SIZE_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkSparseImageFormatFlags class >> VK_SPARSE_IMAGE_FORMAT_NONSTANDARD_BLOCK_SIZE_BIT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkSparseImageFormatFlags class >> VK_SPARSE_IMAGE_FORMAT_SINGLE_MIPTAIL_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkSparseImageFormatFlags class >> originalTypeName [

    ^ 'long'
]
