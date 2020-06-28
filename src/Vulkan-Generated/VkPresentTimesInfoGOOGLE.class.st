Class {
	#name : #VkPresentTimesInfoGOOGLE,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPresentTimesInfoGOOGLE class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(swapchainCount 'uint32_t')
		(pTimes 'VkPresentTimeGOOGLE*')
	)
]
