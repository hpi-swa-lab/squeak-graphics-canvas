Class {
	#name : #VkToolPurposeFlagsEXT,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkToolPurposeFlagsEXT class >> VK_TOOL_PURPOSE_ADDITIONAL_FEATURES_BIT_EXT [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkToolPurposeFlagsEXT class >> VK_TOOL_PURPOSE_MODIFYING_FEATURES_BIT_EXT [

	^ self on: (1 bitShift: 4)
]

{ #category : #'as yet unclassified' }
VkToolPurposeFlagsEXT class >> VK_TOOL_PURPOSE_PROFILING_BIT_EXT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkToolPurposeFlagsEXT class >> VK_TOOL_PURPOSE_TRACING_BIT_EXT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkToolPurposeFlagsEXT class >> VK_TOOL_PURPOSE_VALIDATION_BIT_EXT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkToolPurposeFlagsEXT class >> originalTypeName [

    ^ 'long'
]
