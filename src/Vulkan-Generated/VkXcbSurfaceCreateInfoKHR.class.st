Class {
	#name : #VkXcbSurfaceCreateInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkXcbSurfaceCreateInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkXcbSurfaceCreateFlagsKHR')
		(connection 'void*')
		(window 'void')
	)
]
