Class {
	#name : #VkMemoryOverallocationBehaviorAMD,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkMemoryOverallocationBehaviorAMD class >> VK_MEMORY_OVERALLOCATION_BEHAVIOR_ALLOWED_AMD [

	^ self on: (1)
]

{ #category : #'as yet unclassified' }
VkMemoryOverallocationBehaviorAMD class >> VK_MEMORY_OVERALLOCATION_BEHAVIOR_DEFAULT_AMD [

	^ self on: (0)
]

{ #category : #'as yet unclassified' }
VkMemoryOverallocationBehaviorAMD class >> VK_MEMORY_OVERALLOCATION_BEHAVIOR_DISALLOWED_AMD [

	^ self on: (2)
]

{ #category : #'as yet unclassified' }
VkMemoryOverallocationBehaviorAMD class >> originalTypeName [

    ^ 'long'
]
