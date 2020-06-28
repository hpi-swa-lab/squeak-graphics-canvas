Class {
	#name : #VkSubpassDependency,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSubpassDependency class >> fields [

	^ #(
		(srcSubpass 'uint32_t')
		(dstSubpass 'uint32_t')
		(srcStageMask 'VkPipelineStageFlags')
		(dstStageMask 'VkPipelineStageFlags')
		(srcAccessMask 'VkAccessFlags')
		(dstAccessMask 'VkAccessFlags')
		(dependencyFlags 'VkDependencyFlags')
	)
]
