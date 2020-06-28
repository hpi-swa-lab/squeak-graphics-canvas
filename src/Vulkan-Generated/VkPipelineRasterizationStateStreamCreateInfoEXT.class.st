Class {
	#name : #VkPipelineRasterizationStateStreamCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineRasterizationStateStreamCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkPipelineRasterizationStateStreamCreateFlagsEXT')
		(rasterizationStream 'uint32_t')
	)
]
