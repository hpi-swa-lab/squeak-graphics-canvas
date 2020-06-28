Class {
	#name : #VkSparseMemoryBind,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSparseMemoryBind class >> fields [

	^ #(
		(resourceOffset 'VkDeviceSize')
		(size 'VkDeviceSize')
		(memory 'VkDeviceMemory')
		(memoryOffset 'VkDeviceSize')
		(flags 'VkSparseMemoryBindFlags')
	)
]
