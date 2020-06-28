Class {
	#name : #VkQueryPoolPerformanceQueryCreateInfoINTEL,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkQueryPoolPerformanceQueryCreateInfoINTEL class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(performanceCountersSampling 'VkQueryPoolSamplingModeINTEL')
	)
]
