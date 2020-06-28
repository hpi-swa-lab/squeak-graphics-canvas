Class {
	#name : #VkBufferCreateFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkBufferCreateFlags class >> VK_BUFFER_CREATE_SPARSE_ALIASED_BIT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkBufferCreateFlags class >> VK_BUFFER_CREATE_SPARSE_BINDING_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkBufferCreateFlags class >> VK_BUFFER_CREATE_SPARSE_RESIDENCY_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkBufferCreateFlags class >> originalTypeName [

    ^ 'long'
]
