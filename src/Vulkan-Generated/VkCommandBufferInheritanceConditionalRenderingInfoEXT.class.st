Class {
	#name : #VkCommandBufferInheritanceConditionalRenderingInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkCommandBufferInheritanceConditionalRenderingInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(conditionalRenderingEnable 'VkBool32')
	)
]
