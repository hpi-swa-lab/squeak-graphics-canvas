Class {
	#name : #VkBuildAccelerationStructureFlagsKHR,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkBuildAccelerationStructureFlagsKHR class >> VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_COMPACTION_BIT_KHR [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkBuildAccelerationStructureFlagsKHR class >> VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_UPDATE_BIT_KHR [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkBuildAccelerationStructureFlagsKHR class >> VK_BUILD_ACCELERATION_STRUCTURE_LOW_MEMORY_BIT_KHR [

	^ self on: (1 bitShift: 4)
]

{ #category : #'as yet unclassified' }
VkBuildAccelerationStructureFlagsKHR class >> VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_BUILD_BIT_KHR [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkBuildAccelerationStructureFlagsKHR class >> VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_TRACE_BIT_KHR [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkBuildAccelerationStructureFlagsKHR class >> originalTypeName [

    ^ 'long'
]
