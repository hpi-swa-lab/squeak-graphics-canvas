Class {
	#name : #VkFenceGetFdInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkFenceGetFdInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(fence 'VkFence')
		(handleType 'VkExternalFenceHandleTypeFlags')
	)
]
