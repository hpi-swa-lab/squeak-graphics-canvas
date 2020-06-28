Class {
	#name : #VkSharingMode,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSharingMode class >> VK_SHARING_MODE_CONCURRENT [

	^ self on: (1)
]

{ #category : #'as yet unclassified' }
VkSharingMode class >> VK_SHARING_MODE_EXCLUSIVE [

	^ self on: (0)
]

{ #category : #'as yet unclassified' }
VkSharingMode class >> originalTypeName [

    ^ 'long'
]
