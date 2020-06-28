Class {
	#name : #VkCommandPoolCreateFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkCommandPoolCreateFlags class >> VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkCommandPoolCreateFlags class >> VK_COMMAND_POOL_CREATE_TRANSIENT_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkCommandPoolCreateFlags class >> originalTypeName [

    ^ 'long'
]
