Class {
	#name : #VkSemaphoreWaitFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSemaphoreWaitFlags class >> VK_SEMAPHORE_WAIT_ANY_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkSemaphoreWaitFlags class >> originalTypeName [

    ^ 'long'
]
