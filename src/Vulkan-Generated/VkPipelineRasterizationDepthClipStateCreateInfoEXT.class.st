Class {
	#name : #VkPipelineRasterizationDepthClipStateCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineRasterizationDepthClipStateCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkPipelineRasterizationDepthClipStateCreateFlagsEXT')
		(depthClipEnable 'VkBool32')
	)
]
