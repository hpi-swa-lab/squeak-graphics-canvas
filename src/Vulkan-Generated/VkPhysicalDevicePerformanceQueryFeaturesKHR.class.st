Class {
	#name : #VkPhysicalDevicePerformanceQueryFeaturesKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDevicePerformanceQueryFeaturesKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(performanceCounterQueryPools 'VkBool32')
		(performanceCounterMultipleQueryPools 'VkBool32')
	)
]
