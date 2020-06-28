Class {
	#name : #VkShaderInfoTypeAMD,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkShaderInfoTypeAMD class >> VK_SHADER_INFO_TYPE_BINARY_AMD [

	^ self on: (1)
]

{ #category : #'as yet unclassified' }
VkShaderInfoTypeAMD class >> VK_SHADER_INFO_TYPE_DISASSEMBLY_AMD [

	^ self on: (2)
]

{ #category : #'as yet unclassified' }
VkShaderInfoTypeAMD class >> VK_SHADER_INFO_TYPE_STATISTICS_AMD [

	^ self on: (0)
]

{ #category : #'as yet unclassified' }
VkShaderInfoTypeAMD class >> originalTypeName [

    ^ 'long'
]
