Class {
	#name : #VkSystemAllocationScope,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSystemAllocationScope class >> VK_SYSTEM_ALLOCATION_SCOPE_CACHE [

	^ self on: (2)
]

{ #category : #'as yet unclassified' }
VkSystemAllocationScope class >> VK_SYSTEM_ALLOCATION_SCOPE_COMMAND [

	^ self on: (0)
]

{ #category : #'as yet unclassified' }
VkSystemAllocationScope class >> VK_SYSTEM_ALLOCATION_SCOPE_DEVICE [

	^ self on: (3)
]

{ #category : #'as yet unclassified' }
VkSystemAllocationScope class >> VK_SYSTEM_ALLOCATION_SCOPE_INSTANCE [

	^ self on: (4)
]

{ #category : #'as yet unclassified' }
VkSystemAllocationScope class >> VK_SYSTEM_ALLOCATION_SCOPE_OBJECT [

	^ self on: (1)
]

{ #category : #'as yet unclassified' }
VkSystemAllocationScope class >> originalTypeName [

    ^ 'long'
]
