Class {
	#name : #VkCommandBufferInheritanceRenderPassTransformInfoQCOM,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkCommandBufferInheritanceRenderPassTransformInfoQCOM class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(transform 'VkSurfaceTransformFlagsKHR')
		(renderArea 'VkRect2D')
	)
]
