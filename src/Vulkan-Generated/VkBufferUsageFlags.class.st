Class {
	#name : #VkBufferUsageFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkBufferUsageFlags class >> VK_BUFFER_USAGE_INDEX_BUFFER_BIT [

	^ self on: (1 bitShift: 6)
]

{ #category : #'as yet unclassified' }
VkBufferUsageFlags class >> VK_BUFFER_USAGE_INDIRECT_BUFFER_BIT [

	^ self on: (1 bitShift: 8)
]

{ #category : #'as yet unclassified' }
VkBufferUsageFlags class >> VK_BUFFER_USAGE_STORAGE_BUFFER_BIT [

	^ self on: (1 bitShift: 5)
]

{ #category : #'as yet unclassified' }
VkBufferUsageFlags class >> VK_BUFFER_USAGE_STORAGE_TEXEL_BUFFER_BIT [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkBufferUsageFlags class >> VK_BUFFER_USAGE_TRANSFER_DST_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkBufferUsageFlags class >> VK_BUFFER_USAGE_TRANSFER_SRC_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkBufferUsageFlags class >> VK_BUFFER_USAGE_UNIFORM_BUFFER_BIT [

	^ self on: (1 bitShift: 4)
]

{ #category : #'as yet unclassified' }
VkBufferUsageFlags class >> VK_BUFFER_USAGE_UNIFORM_TEXEL_BUFFER_BIT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkBufferUsageFlags class >> VK_BUFFER_USAGE_VERTEX_BUFFER_BIT [

	^ self on: (1 bitShift: 7)
]

{ #category : #'as yet unclassified' }
VkBufferUsageFlags class >> originalTypeName [

    ^ 'long'
]
