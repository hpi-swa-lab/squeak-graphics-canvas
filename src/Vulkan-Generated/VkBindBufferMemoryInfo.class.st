Class {
	#name : #VkBindBufferMemoryInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkBindBufferMemoryInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(buffer 'VkBuffer')
		(memory 'VkDeviceMemory')
		(memoryOffset 'VkDeviceSize')
	)
]
