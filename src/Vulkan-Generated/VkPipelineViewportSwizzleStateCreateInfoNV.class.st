Class {
	#name : #VkPipelineViewportSwizzleStateCreateInfoNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineViewportSwizzleStateCreateInfoNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkPipelineViewportSwizzleStateCreateFlagsNV')
		(viewportCount 'uint32_t')
		(pViewportSwizzles 'VkViewportSwizzleNV*')
	)
]
