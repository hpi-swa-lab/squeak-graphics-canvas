Class {
	#name : #VkCommandBufferResetFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkCommandBufferResetFlags class >> VK_COMMAND_BUFFER_RESET_RELEASE_RESOURCES_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkCommandBufferResetFlags class >> originalTypeName [

    ^ 'long'
]
