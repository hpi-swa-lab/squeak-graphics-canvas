Class {
	#name : #VkCommandBufferUsageFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkCommandBufferUsageFlags class >> VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkCommandBufferUsageFlags class >> VK_COMMAND_BUFFER_USAGE_RENDER_PASS_CONTINUE_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkCommandBufferUsageFlags class >> VK_COMMAND_BUFFER_USAGE_SIMULTANEOUS_USE_BIT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkCommandBufferUsageFlags class >> originalTypeName [

    ^ 'long'
]
