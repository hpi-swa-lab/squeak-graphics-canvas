Class {
	#name : #VkQueueGlobalPriorityEXT,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkQueueGlobalPriorityEXT class >> VK_QUEUE_GLOBAL_PRIORITY_HIGH_EXT [

	^ self on: (512)
]

{ #category : #'as yet unclassified' }
VkQueueGlobalPriorityEXT class >> VK_QUEUE_GLOBAL_PRIORITY_LOW_EXT [

	^ self on: (128)
]

{ #category : #'as yet unclassified' }
VkQueueGlobalPriorityEXT class >> VK_QUEUE_GLOBAL_PRIORITY_MEDIUM_EXT [

	^ self on: (256)
]

{ #category : #'as yet unclassified' }
VkQueueGlobalPriorityEXT class >> VK_QUEUE_GLOBAL_PRIORITY_REALTIME_EXT [

	^ self on: (1024)
]

{ #category : #'as yet unclassified' }
VkQueueGlobalPriorityEXT class >> originalTypeName [

    ^ 'long'
]
