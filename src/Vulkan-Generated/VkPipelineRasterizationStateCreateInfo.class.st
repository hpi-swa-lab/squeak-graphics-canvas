Class {
	#name : #VkPipelineRasterizationStateCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineRasterizationStateCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkPipelineRasterizationStateCreateFlags')
		(depthClampEnable 'VkBool32')
		(rasterizerDiscardEnable 'VkBool32')
		(polygonMode 'VkPolygonMode')
		(cullMode 'VkCullModeFlags')
		(frontFace 'VkFrontFace')
		(depthBiasEnable 'VkBool32')
		(depthBiasConstantFactor 'float')
		(depthBiasClamp 'float')
		(depthBiasSlopeFactor 'float')
		(lineWidth 'float')
	)
]
