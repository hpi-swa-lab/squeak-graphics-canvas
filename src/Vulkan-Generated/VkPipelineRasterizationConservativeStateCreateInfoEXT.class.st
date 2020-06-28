Class {
	#name : #VkPipelineRasterizationConservativeStateCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineRasterizationConservativeStateCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkPipelineRasterizationConservativeStateCreateFlagsEXT')
		(conservativeRasterizationMode 'VkConservativeRasterizationModeEXT')
		(extraPrimitiveOverestimationSize 'float')
	)
]
