Class {
	#name : #VkQueryType,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkQueryType class >> VK_QUERY_TYPE_OCCLUSION [

	^ self on: (0)
]

{ #category : #'as yet unclassified' }
VkQueryType class >> VK_QUERY_TYPE_PIPELINE_STATISTICS [

	^ self on: (1)
]

{ #category : #'as yet unclassified' }
VkQueryType class >> VK_QUERY_TYPE_TIMESTAMP [

	^ self on: (2)
]

{ #category : #'as yet unclassified' }
VkQueryType class >> originalTypeName [

    ^ 'long'
]
