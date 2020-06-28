Class {
	#name : #VkSubpassDependency2,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSubpassDependency2 class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(srcSubpass 'uint32_t')
		(dstSubpass 'uint32_t')
		(srcStageMask 'VkPipelineStageFlags')
		(dstStageMask 'VkPipelineStageFlags')
		(srcAccessMask 'VkAccessFlags')
		(dstAccessMask 'VkAccessFlags')
		(dependencyFlags 'VkDependencyFlags')
		(viewOffset 'int32_t')
	)
]
