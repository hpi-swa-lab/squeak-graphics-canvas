Class {
	#name : #VkFenceGetWin32HandleInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkFenceGetWin32HandleInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(fence 'VkFence')
		(handleType 'VkExternalFenceHandleTypeFlags')
	)
]
