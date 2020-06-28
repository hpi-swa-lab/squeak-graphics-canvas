Class {
	#name : #VkDebugUtilsMessageTypeFlagsEXT,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDebugUtilsMessageTypeFlagsEXT class >> VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkDebugUtilsMessageTypeFlagsEXT class >> VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkDebugUtilsMessageTypeFlagsEXT class >> VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkDebugUtilsMessageTypeFlagsEXT class >> originalTypeName [

    ^ 'long'
]
