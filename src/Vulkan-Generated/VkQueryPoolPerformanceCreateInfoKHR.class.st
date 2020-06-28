Class {
	#name : #VkQueryPoolPerformanceCreateInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkQueryPoolPerformanceCreateInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(queueFamilyIndex 'uint32_t')
		(counterIndexCount 'uint32_t')
		(pCounterIndices 'uint32_t*')
	)
]
