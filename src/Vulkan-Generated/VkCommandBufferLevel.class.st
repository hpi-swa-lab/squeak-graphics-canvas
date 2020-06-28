Class {
	#name : #VkCommandBufferLevel,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkCommandBufferLevel class >> VK_COMMAND_BUFFER_LEVEL_PRIMARY [

	^ self on: (0)
]

{ #category : #'as yet unclassified' }
VkCommandBufferLevel class >> VK_COMMAND_BUFFER_LEVEL_SECONDARY [

	^ self on: (1)
]

{ #category : #'as yet unclassified' }
VkCommandBufferLevel class >> originalTypeName [

    ^ 'long'
]
