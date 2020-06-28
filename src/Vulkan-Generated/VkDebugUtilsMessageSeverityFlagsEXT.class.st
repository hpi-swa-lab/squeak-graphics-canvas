Class {
	#name : #VkDebugUtilsMessageSeverityFlagsEXT,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDebugUtilsMessageSeverityFlagsEXT class >> VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT [

	^ self on: (1 bitShift: 12)
]

{ #category : #'as yet unclassified' }
VkDebugUtilsMessageSeverityFlagsEXT class >> VK_DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT [

	^ self on: (1 bitShift: 4)
]

{ #category : #'as yet unclassified' }
VkDebugUtilsMessageSeverityFlagsEXT class >> VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkDebugUtilsMessageSeverityFlagsEXT class >> VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT [

	^ self on: (1 bitShift: 8)
]

{ #category : #'as yet unclassified' }
VkDebugUtilsMessageSeverityFlagsEXT class >> originalTypeName [

    ^ 'long'
]
