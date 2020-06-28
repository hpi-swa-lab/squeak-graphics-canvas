Class {
	#name : #VkPhysicalDeviceMemoryProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceMemoryProperties class >> fields [

	^ #(
		(memoryTypeCount 'uint32_t')
		(memoryTypes 'VkMemoryType')
		(memoryHeapCount 'uint32_t')
		(memoryHeaps 'VkMemoryHeap')
	)
]
