Class {
	#name : #VkPhysicalDeviceExternalImageFormatInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceExternalImageFormatInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(handleType 'VkExternalMemoryHandleTypeFlags')
	)
]
