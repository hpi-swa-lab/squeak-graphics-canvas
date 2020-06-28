Class {
	#name : #VkDisplayModeParametersKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDisplayModeParametersKHR class >> fields [

	^ #(
		(visibleRegion 'VkExtent2D')
		(refreshRate 'uint32_t')
	)
]
