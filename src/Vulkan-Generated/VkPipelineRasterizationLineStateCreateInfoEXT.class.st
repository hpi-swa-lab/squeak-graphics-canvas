Class {
	#name : #VkPipelineRasterizationLineStateCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineRasterizationLineStateCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(lineRasterizationMode 'VkLineRasterizationModeEXT')
		(stippledLineEnable 'VkBool32')
		(lineStippleFactor 'uint32_t')
		(lineStipplePattern 'uint16_t')
	)
]
