Class {
	#name : #VkPipelineViewportCoarseSampleOrderStateCreateInfoNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineViewportCoarseSampleOrderStateCreateInfoNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(sampleOrderType 'VkCoarseSampleOrderTypeNV')
		(customSampleOrderCount 'uint32_t')
		(pCustomSampleOrders 'VkCoarseSampleOrderCustomNV*')
	)
]
