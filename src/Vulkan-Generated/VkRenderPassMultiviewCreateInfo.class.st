Class {
	#name : #VkRenderPassMultiviewCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkRenderPassMultiviewCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(subpassCount 'uint32_t')
		(pViewMasks 'uint32_t*')
		(dependencyCount 'uint32_t')
		(pViewOffsets 'int32_t*')
		(correlationMaskCount 'uint32_t')
		(pCorrelationMasks 'uint32_t*')
	)
]
