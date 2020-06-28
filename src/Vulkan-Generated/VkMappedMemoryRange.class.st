Class {
	#name : #VkMappedMemoryRange,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkMappedMemoryRange class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(memory 'VkDeviceMemory')
		(offset 'VkDeviceSize')
		(size 'VkDeviceSize')
	)
]
