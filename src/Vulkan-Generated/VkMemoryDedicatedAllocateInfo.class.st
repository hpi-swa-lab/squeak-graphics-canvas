Class {
	#name : #VkMemoryDedicatedAllocateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkMemoryDedicatedAllocateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(image 'VkImage')
		(buffer 'VkBuffer')
	)
]
