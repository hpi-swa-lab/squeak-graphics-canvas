Class {
	#name : #VkIndirectCommandsLayoutUsageFlagsNV,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkIndirectCommandsLayoutUsageFlagsNV class >> VK_INDIRECT_COMMANDS_LAYOUT_USAGE_EXPLICIT_PREPROCESS_BIT_NV [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkIndirectCommandsLayoutUsageFlagsNV class >> VK_INDIRECT_COMMANDS_LAYOUT_USAGE_INDEXED_SEQUENCES_BIT_NV [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkIndirectCommandsLayoutUsageFlagsNV class >> VK_INDIRECT_COMMANDS_LAYOUT_USAGE_UNORDERED_SEQUENCES_BIT_NV [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkIndirectCommandsLayoutUsageFlagsNV class >> originalTypeName [

    ^ 'long'
]
