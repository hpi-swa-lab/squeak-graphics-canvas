Class {
	#name : #VkPastPresentationTimingGOOGLE,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPastPresentationTimingGOOGLE class >> fields [

	^ #(
		(presentID 'uint32_t')
		(desiredPresentTime 'uint64_t')
		(actualPresentTime 'uint64_t')
		(earliestPresentTime 'uint64_t')
		(presentMargin 'uint64_t')
	)
]
