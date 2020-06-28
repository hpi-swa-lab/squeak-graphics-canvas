Class {
	#name : #VkPipelineBindPoint,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineBindPoint class >> VK_PIPELINE_BIND_POINT_COMPUTE [

	^ self on: (1)
]

{ #category : #'as yet unclassified' }
VkPipelineBindPoint class >> VK_PIPELINE_BIND_POINT_GRAPHICS [

	^ self on: (0)
]

{ #category : #'as yet unclassified' }
VkPipelineBindPoint class >> originalTypeName [

    ^ 'long'
]
