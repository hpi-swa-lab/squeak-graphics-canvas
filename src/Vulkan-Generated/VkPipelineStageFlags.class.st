Class {
	#name : #VkPipelineStageFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineStageFlags class >> VK_PIPELINE_STAGE_ALL_COMMANDS_BIT [

	^ self on: (1 bitShift: 16)
]

{ #category : #'as yet unclassified' }
VkPipelineStageFlags class >> VK_PIPELINE_STAGE_ALL_GRAPHICS_BIT [

	^ self on: (1 bitShift: 15)
]

{ #category : #'as yet unclassified' }
VkPipelineStageFlags class >> VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT [

	^ self on: (1 bitShift: 13)
]

{ #category : #'as yet unclassified' }
VkPipelineStageFlags class >> VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT [

	^ self on: (1 bitShift: 10)
]

{ #category : #'as yet unclassified' }
VkPipelineStageFlags class >> VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT [

	^ self on: (1 bitShift: 11)
]

{ #category : #'as yet unclassified' }
VkPipelineStageFlags class >> VK_PIPELINE_STAGE_DRAW_INDIRECT_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkPipelineStageFlags class >> VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT [

	^ self on: (1 bitShift: 8)
]

{ #category : #'as yet unclassified' }
VkPipelineStageFlags class >> VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT [

	^ self on: (1 bitShift: 7)
]

{ #category : #'as yet unclassified' }
VkPipelineStageFlags class >> VK_PIPELINE_STAGE_GEOMETRY_SHADER_BIT [

	^ self on: (1 bitShift: 6)
]

{ #category : #'as yet unclassified' }
VkPipelineStageFlags class >> VK_PIPELINE_STAGE_HOST_BIT [

	^ self on: (1 bitShift: 14)
]

{ #category : #'as yet unclassified' }
VkPipelineStageFlags class >> VK_PIPELINE_STAGE_LATE_FRAGMENT_TESTS_BIT [

	^ self on: (1 bitShift: 9)
]

{ #category : #'as yet unclassified' }
VkPipelineStageFlags class >> VK_PIPELINE_STAGE_TESSELLATION_CONTROL_SHADER_BIT [

	^ self on: (1 bitShift: 4)
]

{ #category : #'as yet unclassified' }
VkPipelineStageFlags class >> VK_PIPELINE_STAGE_TESSELLATION_EVALUATION_SHADER_BIT [

	^ self on: (1 bitShift: 5)
]

{ #category : #'as yet unclassified' }
VkPipelineStageFlags class >> VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkPipelineStageFlags class >> VK_PIPELINE_STAGE_TRANSFER_BIT [

	^ self on: (1 bitShift: 12)
]

{ #category : #'as yet unclassified' }
VkPipelineStageFlags class >> VK_PIPELINE_STAGE_VERTEX_INPUT_BIT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkPipelineStageFlags class >> VK_PIPELINE_STAGE_VERTEX_SHADER_BIT [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkPipelineStageFlags class >> originalTypeName [

    ^ 'long'
]
