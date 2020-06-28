Class {
	#name : #VkDedicatedAllocationMemoryAllocateInfoNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDedicatedAllocationMemoryAllocateInfoNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(image 'VkImage')
		(buffer 'VkBuffer')
	)
]
