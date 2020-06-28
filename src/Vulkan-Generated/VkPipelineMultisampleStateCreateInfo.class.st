Class {
	#name : #VkPipelineMultisampleStateCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineMultisampleStateCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkPipelineMultisampleStateCreateFlags')
		(rasterizationSamples 'VkSampleCountFlags')
		(sampleShadingEnable 'VkBool32')
		(minSampleShading 'float')
		(pSampleMask 'VkSampleMask*')
		(alphaToCoverageEnable 'VkBool32')
		(alphaToOneEnable 'VkBool32')
	)
]
