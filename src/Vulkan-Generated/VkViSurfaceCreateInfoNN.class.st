Class {
	#name : #VkViSurfaceCreateInfoNN,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkViSurfaceCreateInfoNN class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkViSurfaceCreateFlagsNN')
		(window 'void*')
	)
]
