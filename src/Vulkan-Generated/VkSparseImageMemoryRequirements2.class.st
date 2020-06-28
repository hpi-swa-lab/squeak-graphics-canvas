Class {
	#name : #VkSparseImageMemoryRequirements2,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSparseImageMemoryRequirements2 class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(memoryRequirements 'VkSparseImageMemoryRequirements')
	)
]
