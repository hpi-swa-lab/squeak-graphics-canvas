Class {
	#name : #VkPipelineDiscardRectangleStateCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineDiscardRectangleStateCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkPipelineDiscardRectangleStateCreateFlagsEXT')
		(discardRectangleMode 'VkDiscardRectangleModeEXT')
		(discardRectangleCount 'uint32_t')
		(pDiscardRectangles 'VkRect2D*')
	)
]
