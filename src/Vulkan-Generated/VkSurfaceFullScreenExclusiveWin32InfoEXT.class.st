Class {
	#name : #VkSurfaceFullScreenExclusiveWin32InfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSurfaceFullScreenExclusiveWin32InfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(hmonitor 'void')
	)
]
