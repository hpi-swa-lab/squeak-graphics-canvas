Class {
	#name : #VkShaderStageFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkShaderStageFlags class >> VK_SHADER_STAGE_ALL [

	^ self on: (0x7FFFFFFF)
]

{ #category : #'as yet unclassified' }
VkShaderStageFlags class >> VK_SHADER_STAGE_ALL_GRAPHICS [

	^ self on: (0x0000001F)
]

{ #category : #'as yet unclassified' }
VkShaderStageFlags class >> VK_SHADER_STAGE_COMPUTE_BIT [

	^ self on: (1 bitShift: 5)
]

{ #category : #'as yet unclassified' }
VkShaderStageFlags class >> VK_SHADER_STAGE_FRAGMENT_BIT [

	^ self on: (1 bitShift: 4)
]

{ #category : #'as yet unclassified' }
VkShaderStageFlags class >> VK_SHADER_STAGE_GEOMETRY_BIT [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkShaderStageFlags class >> VK_SHADER_STAGE_TESSELLATION_CONTROL_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkShaderStageFlags class >> VK_SHADER_STAGE_TESSELLATION_EVALUATION_BIT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkShaderStageFlags class >> VK_SHADER_STAGE_VERTEX_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkShaderStageFlags class >> originalTypeName [

    ^ 'long'
]
