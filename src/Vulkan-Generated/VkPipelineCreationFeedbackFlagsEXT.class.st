Class {
	#name : #VkPipelineCreationFeedbackFlagsEXT,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineCreationFeedbackFlagsEXT class >> VK_PIPELINE_CREATION_FEEDBACK_APPLICATION_PIPELINE_CACHE_HIT_BIT_EXT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkPipelineCreationFeedbackFlagsEXT class >> VK_PIPELINE_CREATION_FEEDBACK_BASE_PIPELINE_ACCELERATION_BIT_EXT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkPipelineCreationFeedbackFlagsEXT class >> VK_PIPELINE_CREATION_FEEDBACK_VALID_BIT_EXT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkPipelineCreationFeedbackFlagsEXT class >> originalTypeName [

    ^ 'long'
]
