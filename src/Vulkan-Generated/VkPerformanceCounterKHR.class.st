Class {
	#name : #VkPerformanceCounterKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPerformanceCounterKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(unit 'VkPerformanceCounterUnitKHR')
		(scope 'VkPerformanceCounterScopeKHR')
		(storage 'VkPerformanceCounterStorageKHR')
		(uuid 'uint8_t[16]')
	)
]
