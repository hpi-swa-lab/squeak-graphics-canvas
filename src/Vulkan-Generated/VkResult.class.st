Class {
	#name : #VkResult,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkResult class >> VK_ERROR_DEVICE_LOST [

	^ self on: (-4)
]

{ #category : #'as yet unclassified' }
VkResult class >> VK_ERROR_EXTENSION_NOT_PRESENT [

	^ self on: (-7)
]

{ #category : #'as yet unclassified' }
VkResult class >> VK_ERROR_FEATURE_NOT_PRESENT [

	^ self on: (-8)
]

{ #category : #'as yet unclassified' }
VkResult class >> VK_ERROR_FORMAT_NOT_SUPPORTED [

	^ self on: (-11)
]

{ #category : #'as yet unclassified' }
VkResult class >> VK_ERROR_FRAGMENTED_POOL [

	^ self on: (-12)
]

{ #category : #'as yet unclassified' }
VkResult class >> VK_ERROR_INCOMPATIBLE_DRIVER [

	^ self on: (-9)
]

{ #category : #'as yet unclassified' }
VkResult class >> VK_ERROR_INITIALIZATION_FAILED [

	^ self on: (-3)
]

{ #category : #'as yet unclassified' }
VkResult class >> VK_ERROR_LAYER_NOT_PRESENT [

	^ self on: (-6)
]

{ #category : #'as yet unclassified' }
VkResult class >> VK_ERROR_MEMORY_MAP_FAILED [

	^ self on: (-5)
]

{ #category : #'as yet unclassified' }
VkResult class >> VK_ERROR_OUT_OF_DATE_KHR [

	^ self on: (-1000001004)
]

{ #category : #'as yet unclassified' }
VkResult class >> VK_ERROR_OUT_OF_DEVICE_MEMORY [

	^ self on: (-2)
]

{ #category : #'as yet unclassified' }
VkResult class >> VK_ERROR_OUT_OF_HOST_MEMORY [

	^ self on: (-1)
]

{ #category : #'as yet unclassified' }
VkResult class >> VK_ERROR_TOO_MANY_OBJECTS [

	^ self on: (-10)
]

{ #category : #'as yet unclassified' }
VkResult class >> VK_ERROR_UNKNOWN [

	^ self on: (-13)
]

{ #category : #'as yet unclassified' }
VkResult class >> VK_EVENT_RESET [

	^ self on: (4)
]

{ #category : #'as yet unclassified' }
VkResult class >> VK_EVENT_SET [

	^ self on: (3)
]

{ #category : #'as yet unclassified' }
VkResult class >> VK_INCOMPLETE [

	^ self on: (5)
]

{ #category : #'as yet unclassified' }
VkResult class >> VK_NOT_READY [

	^ self on: (1)
]

{ #category : #'as yet unclassified' }
VkResult class >> VK_SUBOPTIMAL_KHR [

	^ self on: (1000001003)
]

{ #category : #'as yet unclassified' }
VkResult class >> VK_SUCCESS [

	^ self on: (0)
]

{ #category : #'as yet unclassified' }
VkResult class >> VK_TIMEOUT [

	^ self on: (2)
]

{ #category : #'as yet unclassified' }
VkResult class >> originalTypeName [

    ^ 'long'
]
