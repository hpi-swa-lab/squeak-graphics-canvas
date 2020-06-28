Class {
	#name : #VkQueryResultFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkQueryResultFlags class >> VK_QUERY_RESULT_64_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkQueryResultFlags class >> VK_QUERY_RESULT_PARTIAL_BIT [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkQueryResultFlags class >> VK_QUERY_RESULT_WAIT_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkQueryResultFlags class >> VK_QUERY_RESULT_WITH_AVAILABILITY_BIT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkQueryResultFlags class >> originalTypeName [

    ^ 'long'
]
