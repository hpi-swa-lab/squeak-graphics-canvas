Class {
	#name : #VkPhysicalDeviceSurfaceInfo2KHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceSurfaceInfo2KHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(surface 'VkSurfaceKHR')
	)
]
