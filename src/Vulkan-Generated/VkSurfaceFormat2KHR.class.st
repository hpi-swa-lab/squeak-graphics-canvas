Class {
	#name : #VkSurfaceFormat2KHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSurfaceFormat2KHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(surfaceFormat 'VkSurfaceFormatKHR')
	)
]
