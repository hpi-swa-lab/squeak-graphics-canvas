Class {
	#name : #VkPhysicalDeviceExternalSemaphoreInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceExternalSemaphoreInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(handleType 'VkExternalSemaphoreHandleTypeFlags')
	)
]
