Class {
	#name : #VkSamplerMipmapMode,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSamplerMipmapMode class >> VK_SAMPLER_MIPMAP_MODE_LINEAR [

	^ self on: (1)
]

{ #category : #'as yet unclassified' }
VkSamplerMipmapMode class >> VK_SAMPLER_MIPMAP_MODE_NEAREST [

	^ self on: (0)
]

{ #category : #'as yet unclassified' }
VkSamplerMipmapMode class >> originalTypeName [

    ^ 'long'
]
