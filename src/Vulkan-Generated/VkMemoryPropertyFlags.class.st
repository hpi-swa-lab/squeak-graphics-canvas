Class {
	#name : #VkMemoryPropertyFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkMemoryPropertyFlags class >> VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkMemoryPropertyFlags class >> VK_MEMORY_PROPERTY_HOST_CACHED_BIT [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkMemoryPropertyFlags class >> VK_MEMORY_PROPERTY_HOST_COHERENT_BIT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkMemoryPropertyFlags class >> VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkMemoryPropertyFlags class >> VK_MEMORY_PROPERTY_LAZILY_ALLOCATED_BIT [

	^ self on: (1 bitShift: 4)
]

{ #category : #'as yet unclassified' }
VkMemoryPropertyFlags class >> originalTypeName [

    ^ 'long'
]
