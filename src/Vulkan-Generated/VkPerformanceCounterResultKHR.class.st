Class {
	#name : #VkPerformanceCounterResultKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPerformanceCounterResultKHR class >> fields [

	^ #(
		(int32 'int32_t')
		(int64 'int64_t')
		(uint32 'uint32_t')
		(uint64 'uint64_t')
		(float32 'float')
		(float64 'double')
	)
]
