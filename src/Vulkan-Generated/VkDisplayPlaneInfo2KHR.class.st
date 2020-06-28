Class {
	#name : #VkDisplayPlaneInfo2KHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDisplayPlaneInfo2KHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(mode 'VkDisplayModeKHR')
		(planeIndex 'uint32_t')
	)
]
