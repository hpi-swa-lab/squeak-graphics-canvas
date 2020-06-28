Class {
	#name : #VkMemoryAllocateFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkMemoryAllocateFlags class >> VK_MEMORY_ALLOCATE_DEVICE_MASK_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkMemoryAllocateFlags class >> originalTypeName [

    ^ 'long'
]
