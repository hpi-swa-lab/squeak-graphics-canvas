Class {
	#name : #VkMemoryGetWin32HandleInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkMemoryGetWin32HandleInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(memory 'VkDeviceMemory')
		(handleType 'VkExternalMemoryHandleTypeFlags')
	)
]
