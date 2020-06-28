Class {
	#name : #VkRenderPassBeginInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkRenderPassBeginInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(renderPass 'VkRenderPass')
		(framebuffer 'VkFramebuffer')
		(renderArea 'VkRect2D')
		(clearValueCount 'uint32_t')
		(pClearValues 'VkClearValue*')
	)
]
