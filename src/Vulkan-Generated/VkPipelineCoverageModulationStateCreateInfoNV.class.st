Class {
	#name : #VkPipelineCoverageModulationStateCreateInfoNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineCoverageModulationStateCreateInfoNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkPipelineCoverageModulationStateCreateFlagsNV')
		(coverageModulationMode 'VkCoverageModulationModeNV')
		(coverageModulationTableEnable 'VkBool32')
		(coverageModulationTableCount 'uint32_t')
		(pCoverageModulationTable 'float*')
	)
]
