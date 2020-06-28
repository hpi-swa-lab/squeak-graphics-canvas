Class {
	#name : #VkPerformanceCounterDescriptionFlagsKHR,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPerformanceCounterDescriptionFlagsKHR class >> VK_PERFORMANCE_COUNTER_DESCRIPTION_CONCURRENTLY_IMPACTED_KHR [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkPerformanceCounterDescriptionFlagsKHR class >> VK_PERFORMANCE_COUNTER_DESCRIPTION_PERFORMANCE_IMPACTING_KHR [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkPerformanceCounterDescriptionFlagsKHR class >> originalTypeName [

    ^ 'long'
]
