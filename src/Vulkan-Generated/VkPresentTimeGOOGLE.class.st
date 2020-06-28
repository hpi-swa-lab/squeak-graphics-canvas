Class {
	#name : #VkPresentTimeGOOGLE,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPresentTimeGOOGLE class >> fields [

	^ #(
		(presentID 'uint32_t')
		(desiredPresentTime 'uint64_t')
	)
]
