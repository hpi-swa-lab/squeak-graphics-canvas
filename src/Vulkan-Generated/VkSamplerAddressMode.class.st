Class {
	#name : #VkSamplerAddressMode,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSamplerAddressMode class >> VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_BORDER [

	^ self on: (3)
]

{ #category : #'as yet unclassified' }
VkSamplerAddressMode class >> VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE [

	^ self on: (2)
]

{ #category : #'as yet unclassified' }
VkSamplerAddressMode class >> VK_SAMPLER_ADDRESS_MODE_MIRRORED_REPEAT [

	^ self on: (1)
]

{ #category : #'as yet unclassified' }
VkSamplerAddressMode class >> VK_SAMPLER_ADDRESS_MODE_REPEAT [

	^ self on: (0)
]

{ #category : #'as yet unclassified' }
VkSamplerAddressMode class >> originalTypeName [

    ^ 'long'
]
