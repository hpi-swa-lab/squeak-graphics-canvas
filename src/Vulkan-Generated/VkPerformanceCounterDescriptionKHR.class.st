Class {
	#name : #VkPerformanceCounterDescriptionKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPerformanceCounterDescriptionKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkPerformanceCounterDescriptionFlagsKHR')
		(name 'char[256]')
		(category 'char[256]')
		(description 'char[256]')
	)
]
