Class {
	#name : #VkFilter,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkFilter class >> VK_FILTER_LINEAR [

	^ self on: (1)
]

{ #category : #'as yet unclassified' }
VkFilter class >> VK_FILTER_NEAREST [

	^ self on: (0)
]

{ #category : #'as yet unclassified' }
VkFilter class >> originalTypeName [

    ^ 'long'
]
