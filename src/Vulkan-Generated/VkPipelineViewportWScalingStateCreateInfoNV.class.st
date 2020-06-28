Class {
	#name : #VkPipelineViewportWScalingStateCreateInfoNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineViewportWScalingStateCreateInfoNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(viewportWScalingEnable 'VkBool32')
		(viewportCount 'uint32_t')
		(pViewportWScalings 'VkViewportWScalingNV*')
	)
]
