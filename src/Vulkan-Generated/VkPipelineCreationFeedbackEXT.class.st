Class {
	#name : #VkPipelineCreationFeedbackEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineCreationFeedbackEXT class >> fields [

	^ #(
		(flags 'VkPipelineCreationFeedbackFlagsEXT')
		(duration 'uint64_t')
	)
]
