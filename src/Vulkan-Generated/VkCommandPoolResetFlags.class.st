Class {
	#name : #VkCommandPoolResetFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkCommandPoolResetFlags class >> VK_COMMAND_POOL_RESET_RELEASE_RESOURCES_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkCommandPoolResetFlags class >> originalTypeName [

    ^ 'long'
]
