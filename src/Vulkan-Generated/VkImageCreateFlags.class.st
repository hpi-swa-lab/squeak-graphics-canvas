Class {
	#name : #VkImageCreateFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImageCreateFlags class >> VK_IMAGE_CREATE_CUBE_COMPATIBLE_BIT [

	^ self on: (1 bitShift: 4)
]

{ #category : #'as yet unclassified' }
VkImageCreateFlags class >> VK_IMAGE_CREATE_MUTABLE_FORMAT_BIT [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkImageCreateFlags class >> VK_IMAGE_CREATE_SPARSE_ALIASED_BIT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkImageCreateFlags class >> VK_IMAGE_CREATE_SPARSE_BINDING_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkImageCreateFlags class >> VK_IMAGE_CREATE_SPARSE_RESIDENCY_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkImageCreateFlags class >> originalTypeName [

    ^ 'long'
]
