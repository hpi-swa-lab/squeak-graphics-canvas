Class {
	#name : #VkPhysicalDeviceExternalFenceInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceExternalFenceInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(handleType 'VkExternalFenceHandleTypeFlags')
	)
]
