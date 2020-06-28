Class {
	#name : #VkRayTracingPipelineInterfaceCreateInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkRayTracingPipelineInterfaceCreateInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(maxPayloadSize 'uint32_t')
		(maxAttributeSize 'uint32_t')
		(maxCallableSize 'uint32_t')
	)
]
