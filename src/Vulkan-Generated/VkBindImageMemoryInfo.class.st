Class {
	#name : #VkBindImageMemoryInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkBindImageMemoryInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(image 'VkImage')
		(memory 'VkDeviceMemory')
		(memoryOffset 'VkDeviceSize')
	)
]
