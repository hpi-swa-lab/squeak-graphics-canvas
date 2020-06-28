Class {
	#name : #VkPipelineCreationFeedbackCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineCreationFeedbackCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(pPipelineCreationFeedback 'VkPipelineCreationFeedbackEXT*')
		(pipelineStageCreationFeedbackCount 'uint32_t')
		(pPipelineStageCreationFeedbacks 'VkPipelineCreationFeedbackEXT*')
	)
]
