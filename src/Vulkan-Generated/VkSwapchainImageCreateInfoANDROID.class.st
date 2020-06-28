Class {
	#name : #VkSwapchainImageCreateInfoANDROID,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSwapchainImageCreateInfoANDROID class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(usage 'VkSwapchainImageUsageFlagsANDROID')
	)
]
