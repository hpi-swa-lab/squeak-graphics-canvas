Class {
	#name : #VkPushConstantRange,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPushConstantRange class >> fields [

	^ #(
		(stageFlags 'VkShaderStageFlags')
		(offset 'uint32_t')
		(size 'uint32_t')
	)
]
