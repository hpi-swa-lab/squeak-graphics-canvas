Class {
	#name : #VkWaylandSurfaceCreateInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkWaylandSurfaceCreateInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkWaylandSurfaceCreateFlagsKHR')
		(display 'void*')
		(surface 'void*')
	)
]
