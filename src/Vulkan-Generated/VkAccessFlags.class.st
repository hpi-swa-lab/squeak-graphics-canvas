Class {
	#name : #VkAccessFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAccessFlags class >> VK_ACCESS_COLOR_ATTACHMENT_READ_BIT [

	^ self on: (1 bitShift: 7)
]

{ #category : #'as yet unclassified' }
VkAccessFlags class >> VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT [

	^ self on: (1 bitShift: 8)
]

{ #category : #'as yet unclassified' }
VkAccessFlags class >> VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_READ_BIT [

	^ self on: (1 bitShift: 9)
]

{ #category : #'as yet unclassified' }
VkAccessFlags class >> VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT [

	^ self on: (1 bitShift: 10)
]

{ #category : #'as yet unclassified' }
VkAccessFlags class >> VK_ACCESS_HOST_READ_BIT [

	^ self on: (1 bitShift: 13)
]

{ #category : #'as yet unclassified' }
VkAccessFlags class >> VK_ACCESS_HOST_WRITE_BIT [

	^ self on: (1 bitShift: 14)
]

{ #category : #'as yet unclassified' }
VkAccessFlags class >> VK_ACCESS_INDEX_READ_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkAccessFlags class >> VK_ACCESS_INDIRECT_COMMAND_READ_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkAccessFlags class >> VK_ACCESS_INPUT_ATTACHMENT_READ_BIT [

	^ self on: (1 bitShift: 4)
]

{ #category : #'as yet unclassified' }
VkAccessFlags class >> VK_ACCESS_MEMORY_READ_BIT [

	^ self on: (1 bitShift: 15)
]

{ #category : #'as yet unclassified' }
VkAccessFlags class >> VK_ACCESS_MEMORY_WRITE_BIT [

	^ self on: (1 bitShift: 16)
]

{ #category : #'as yet unclassified' }
VkAccessFlags class >> VK_ACCESS_SHADER_READ_BIT [

	^ self on: (1 bitShift: 5)
]

{ #category : #'as yet unclassified' }
VkAccessFlags class >> VK_ACCESS_SHADER_WRITE_BIT [

	^ self on: (1 bitShift: 6)
]

{ #category : #'as yet unclassified' }
VkAccessFlags class >> VK_ACCESS_TRANSFER_READ_BIT [

	^ self on: (1 bitShift: 11)
]

{ #category : #'as yet unclassified' }
VkAccessFlags class >> VK_ACCESS_TRANSFER_WRITE_BIT [

	^ self on: (1 bitShift: 12)
]

{ #category : #'as yet unclassified' }
VkAccessFlags class >> VK_ACCESS_UNIFORM_READ_BIT [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkAccessFlags class >> VK_ACCESS_VERTEX_ATTRIBUTE_READ_BIT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkAccessFlags class >> originalTypeName [

    ^ 'long'
]
