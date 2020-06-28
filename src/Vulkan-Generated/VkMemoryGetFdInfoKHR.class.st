Class {
	#name : #VkMemoryGetFdInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkMemoryGetFdInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(memory 'VkDeviceMemory')
		(handleType 'VkExternalMemoryHandleTypeFlags')
	)
]
