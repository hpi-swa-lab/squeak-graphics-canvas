Class {
	#name : #VkDisplaySurfaceCreateInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDisplaySurfaceCreateInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkDisplaySurfaceCreateFlagsKHR')
		(displayMode 'VkDisplayModeKHR')
		(planeIndex 'uint32_t')
		(planeStackIndex 'uint32_t')
		(transform 'VkSurfaceTransformFlagsKHR')
		(globalAlpha 'float')
		(alphaMode 'VkDisplayPlaneAlphaFlagsKHR')
		(imageExtent 'VkExtent2D')
	)
]
