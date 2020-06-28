Class {
	#name : #VkQueueFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkQueueFlags class >> VK_QUEUE_COMPUTE_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkQueueFlags class >> VK_QUEUE_GRAPHICS_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkQueueFlags class >> VK_QUEUE_SPARSE_BINDING_BIT [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkQueueFlags class >> VK_QUEUE_TRANSFER_BIT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkQueueFlags class >> originalTypeName [

    ^ 'long'
]
