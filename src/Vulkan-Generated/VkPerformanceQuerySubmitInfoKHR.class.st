Class {
	#name : #VkPerformanceQuerySubmitInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPerformanceQuerySubmitInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(counterPassIndex 'uint32_t')
	)
]
