Class {
	#name : #VkPipelineRasterizationStateRasterizationOrderAMD,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineRasterizationStateRasterizationOrderAMD class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(rasterizationOrder 'VkRasterizationOrderAMD')
	)
]
