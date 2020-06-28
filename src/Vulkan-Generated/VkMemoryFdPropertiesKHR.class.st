Class {
	#name : #VkMemoryFdPropertiesKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkMemoryFdPropertiesKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(memoryTypeBits 'uint32_t')
	)
]
