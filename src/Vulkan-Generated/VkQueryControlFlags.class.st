Class {
	#name : #VkQueryControlFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkQueryControlFlags class >> VK_QUERY_CONTROL_PRECISE_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkQueryControlFlags class >> originalTypeName [

    ^ 'long'
]
