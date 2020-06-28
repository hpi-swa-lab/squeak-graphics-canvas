Class {
	#name : #VkSharedPresentSurfaceCapabilitiesKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSharedPresentSurfaceCapabilitiesKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(sharedPresentSupportedUsageFlags 'VkImageUsageFlags')
	)
]
