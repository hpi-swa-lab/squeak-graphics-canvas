Class {
	#name : #VkXlibSurfaceCreateInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkXlibSurfaceCreateInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkXlibSurfaceCreateFlagsKHR')
		(dpy 'void*')
		(window 'void')
	)
]
