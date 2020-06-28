Class {
	#name : #VkQueryPipelineStatisticFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkQueryPipelineStatisticFlags class >> VK_QUERY_PIPELINE_STATISTIC_CLIPPING_INVOCATIONS_BIT [

	^ self on: (1 bitShift: 5)
]

{ #category : #'as yet unclassified' }
VkQueryPipelineStatisticFlags class >> VK_QUERY_PIPELINE_STATISTIC_CLIPPING_PRIMITIVES_BIT [

	^ self on: (1 bitShift: 6)
]

{ #category : #'as yet unclassified' }
VkQueryPipelineStatisticFlags class >> VK_QUERY_PIPELINE_STATISTIC_COMPUTE_SHADER_INVOCATIONS_BIT [

	^ self on: (1 bitShift: 10)
]

{ #category : #'as yet unclassified' }
VkQueryPipelineStatisticFlags class >> VK_QUERY_PIPELINE_STATISTIC_FRAGMENT_SHADER_INVOCATIONS_BIT [

	^ self on: (1 bitShift: 7)
]

{ #category : #'as yet unclassified' }
VkQueryPipelineStatisticFlags class >> VK_QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_INVOCATIONS_BIT [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkQueryPipelineStatisticFlags class >> VK_QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_PRIMITIVES_BIT [

	^ self on: (1 bitShift: 4)
]

{ #category : #'as yet unclassified' }
VkQueryPipelineStatisticFlags class >> VK_QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_PRIMITIVES_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkQueryPipelineStatisticFlags class >> VK_QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_VERTICES_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkQueryPipelineStatisticFlags class >> VK_QUERY_PIPELINE_STATISTIC_TESSELLATION_CONTROL_SHADER_PATCHES_BIT [

	^ self on: (1 bitShift: 8)
]

{ #category : #'as yet unclassified' }
VkQueryPipelineStatisticFlags class >> VK_QUERY_PIPELINE_STATISTIC_TESSELLATION_EVALUATION_SHADER_INVOCATIONS_BIT [

	^ self on: (1 bitShift: 9)
]

{ #category : #'as yet unclassified' }
VkQueryPipelineStatisticFlags class >> VK_QUERY_PIPELINE_STATISTIC_VERTEX_SHADER_INVOCATIONS_BIT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkQueryPipelineStatisticFlags class >> originalTypeName [

    ^ 'long'
]
