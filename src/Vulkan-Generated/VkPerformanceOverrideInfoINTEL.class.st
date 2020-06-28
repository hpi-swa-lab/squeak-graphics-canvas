Class {
	#name : #VkPerformanceOverrideInfoINTEL,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPerformanceOverrideInfoINTEL class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(type 'VkPerformanceOverrideTypeINTEL')
		(enable 'VkBool32')
		(parameter 'uint64_t')
	)
]
