Class {
	#name : #VkSemaphoreType,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSemaphoreType class >> VK_SEMAPHORE_TYPE_BINARY [

	^ self on: (0)
]

{ #category : #'as yet unclassified' }
VkSemaphoreType class >> VK_SEMAPHORE_TYPE_TIMELINE [

	^ self on: (1)
]

{ #category : #'as yet unclassified' }
VkSemaphoreType class >> originalTypeName [

    ^ 'long'
]
