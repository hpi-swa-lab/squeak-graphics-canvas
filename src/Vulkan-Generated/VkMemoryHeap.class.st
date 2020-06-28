Class {
	#name : #VkMemoryHeap,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkMemoryHeap class >> fields [

	^ #(
		(size 'VkDeviceSize')
		(flags 'VkMemoryHeapFlags')
	)
]
