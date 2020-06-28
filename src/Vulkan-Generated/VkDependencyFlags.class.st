Class {
	#name : #VkDependencyFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDependencyFlags class >> VK_DEPENDENCY_BY_REGION_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkDependencyFlags class >> originalTypeName [

    ^ 'long'
]
