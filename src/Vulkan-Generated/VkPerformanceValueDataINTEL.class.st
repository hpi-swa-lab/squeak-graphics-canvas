Class {
	#name : #VkPerformanceValueDataINTEL,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPerformanceValueDataINTEL class >> fields [

	^ #(
		(value32 'uint32_t')
		(value64 'uint64_t')
		(valueFloat 'float')
		(valueBool 'VkBool32')
		(valueString 'char*')
	)
]
