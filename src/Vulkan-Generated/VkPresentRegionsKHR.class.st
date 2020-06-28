Class {
	#name : #VkPresentRegionsKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPresentRegionsKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(swapchainCount 'uint32_t')
		(pRegions 'VkPresentRegionKHR*')
	)
]
