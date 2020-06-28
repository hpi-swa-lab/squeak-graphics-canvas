Class {
	#name : #VkSwapchainCounterCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSwapchainCounterCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(surfaceCounters 'VkSurfaceCounterFlagsEXT')
	)
]
