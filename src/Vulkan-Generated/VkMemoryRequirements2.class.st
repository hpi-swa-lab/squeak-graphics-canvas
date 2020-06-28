Class {
	#name : #VkMemoryRequirements2,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkMemoryRequirements2 class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(memoryRequirements 'VkMemoryRequirements')
	)
]
