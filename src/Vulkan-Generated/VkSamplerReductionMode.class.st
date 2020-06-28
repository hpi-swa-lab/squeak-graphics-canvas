Class {
	#name : #VkSamplerReductionMode,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSamplerReductionMode class >> VK_SAMPLER_REDUCTION_MODE_MAX [

	^ self on: (2)
]

{ #category : #'as yet unclassified' }
VkSamplerReductionMode class >> VK_SAMPLER_REDUCTION_MODE_MIN [

	^ self on: (1)
]

{ #category : #'as yet unclassified' }
VkSamplerReductionMode class >> VK_SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE [

	^ self on: (0)
]

{ #category : #'as yet unclassified' }
VkSamplerReductionMode class >> originalTypeName [

    ^ 'long'
]
