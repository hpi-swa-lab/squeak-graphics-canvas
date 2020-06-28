Class {
	#name : #VkMemoryHeapFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkMemoryHeapFlags class >> VK_MEMORY_HEAP_DEVICE_LOCAL_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkMemoryHeapFlags class >> originalTypeName [

    ^ 'long'
]
