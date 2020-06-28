Class {
	#name : #VkMemoryWin32HandlePropertiesKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkMemoryWin32HandlePropertiesKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(memoryTypeBits 'uint32_t')
	)
]
