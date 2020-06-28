Class {
	#name : #VkPipelineCoverageReductionStateCreateInfoNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineCoverageReductionStateCreateInfoNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkPipelineCoverageReductionStateCreateFlagsNV')
		(coverageReductionMode 'VkCoverageReductionModeNV')
	)
]
