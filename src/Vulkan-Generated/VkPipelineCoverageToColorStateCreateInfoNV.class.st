Class {
	#name : #VkPipelineCoverageToColorStateCreateInfoNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineCoverageToColorStateCreateInfoNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkPipelineCoverageToColorStateCreateFlagsNV')
		(coverageToColorEnable 'VkBool32')
		(coverageToColorLocation 'uint32_t')
	)
]
