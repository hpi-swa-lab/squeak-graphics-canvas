Class {
	#name : #VkFramebufferMixedSamplesCombinationNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkFramebufferMixedSamplesCombinationNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(coverageReductionMode 'VkCoverageReductionModeNV')
		(rasterizationSamples 'VkSampleCountFlags')
		(depthStencilSamples 'VkSampleCountFlags')
		(colorSamples 'VkSampleCountFlags')
	)
]
