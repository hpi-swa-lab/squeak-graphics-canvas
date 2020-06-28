Class {
	#name : #VkPerformanceConfigurationAcquireInfoINTEL,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPerformanceConfigurationAcquireInfoINTEL class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(type 'VkPerformanceConfigurationTypeINTEL')
	)
]
