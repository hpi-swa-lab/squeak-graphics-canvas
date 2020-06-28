Class {
	#name : #VkPipelineCreateFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineCreateFlags class >> VK_PIPELINE_CREATE_ALLOW_DERIVATIVES_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkPipelineCreateFlags class >> VK_PIPELINE_CREATE_DERIVATIVE_BIT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkPipelineCreateFlags class >> VK_PIPELINE_CREATE_DISABLE_OPTIMIZATION_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkPipelineCreateFlags class >> originalTypeName [

    ^ 'long'
]
