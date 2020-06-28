Class {
	#name : #VkSubgroupFeatureFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSubgroupFeatureFlags class >> VK_SUBGROUP_FEATURE_ARITHMETIC_BIT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkSubgroupFeatureFlags class >> VK_SUBGROUP_FEATURE_BALLOT_BIT [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkSubgroupFeatureFlags class >> VK_SUBGROUP_FEATURE_BASIC_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkSubgroupFeatureFlags class >> VK_SUBGROUP_FEATURE_CLUSTERED_BIT [

	^ self on: (1 bitShift: 6)
]

{ #category : #'as yet unclassified' }
VkSubgroupFeatureFlags class >> VK_SUBGROUP_FEATURE_QUAD_BIT [

	^ self on: (1 bitShift: 7)
]

{ #category : #'as yet unclassified' }
VkSubgroupFeatureFlags class >> VK_SUBGROUP_FEATURE_SHUFFLE_BIT [

	^ self on: (1 bitShift: 4)
]

{ #category : #'as yet unclassified' }
VkSubgroupFeatureFlags class >> VK_SUBGROUP_FEATURE_SHUFFLE_RELATIVE_BIT [

	^ self on: (1 bitShift: 5)
]

{ #category : #'as yet unclassified' }
VkSubgroupFeatureFlags class >> VK_SUBGROUP_FEATURE_VOTE_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkSubgroupFeatureFlags class >> originalTypeName [

    ^ 'long'
]
