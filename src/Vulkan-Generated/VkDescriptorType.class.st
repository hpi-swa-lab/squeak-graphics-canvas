Class {
	#name : #VkDescriptorType,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDescriptorType class >> VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER [

	^ self on: (1)
]

{ #category : #'as yet unclassified' }
VkDescriptorType class >> VK_DESCRIPTOR_TYPE_INPUT_ATTACHMENT [

	^ self on: (10)
]

{ #category : #'as yet unclassified' }
VkDescriptorType class >> VK_DESCRIPTOR_TYPE_SAMPLED_IMAGE [

	^ self on: (2)
]

{ #category : #'as yet unclassified' }
VkDescriptorType class >> VK_DESCRIPTOR_TYPE_SAMPLER [

	^ self on: (0)
]

{ #category : #'as yet unclassified' }
VkDescriptorType class >> VK_DESCRIPTOR_TYPE_STORAGE_BUFFER [

	^ self on: (7)
]

{ #category : #'as yet unclassified' }
VkDescriptorType class >> VK_DESCRIPTOR_TYPE_STORAGE_BUFFER_DYNAMIC [

	^ self on: (9)
]

{ #category : #'as yet unclassified' }
VkDescriptorType class >> VK_DESCRIPTOR_TYPE_STORAGE_IMAGE [

	^ self on: (3)
]

{ #category : #'as yet unclassified' }
VkDescriptorType class >> VK_DESCRIPTOR_TYPE_STORAGE_TEXEL_BUFFER [

	^ self on: (5)
]

{ #category : #'as yet unclassified' }
VkDescriptorType class >> VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER [

	^ self on: (6)
]

{ #category : #'as yet unclassified' }
VkDescriptorType class >> VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER_DYNAMIC [

	^ self on: (8)
]

{ #category : #'as yet unclassified' }
VkDescriptorType class >> VK_DESCRIPTOR_TYPE_UNIFORM_TEXEL_BUFFER [

	^ self on: (4)
]

{ #category : #'as yet unclassified' }
VkDescriptorType class >> originalTypeName [

    ^ 'long'
]
