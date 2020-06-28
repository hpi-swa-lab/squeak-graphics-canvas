Class {
	#name : #VkDebugReportFlagsEXT,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDebugReportFlagsEXT class >> VK_DEBUG_REPORT_DEBUG_BIT_EXT [

	^ self on: (1 bitShift: 4)
]

{ #category : #'as yet unclassified' }
VkDebugReportFlagsEXT class >> VK_DEBUG_REPORT_ERROR_BIT_EXT [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkDebugReportFlagsEXT class >> VK_DEBUG_REPORT_INFORMATION_BIT_EXT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkDebugReportFlagsEXT class >> VK_DEBUG_REPORT_PERFORMANCE_WARNING_BIT_EXT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkDebugReportFlagsEXT class >> VK_DEBUG_REPORT_WARNING_BIT_EXT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkDebugReportFlagsEXT class >> originalTypeName [

    ^ 'long'
]
