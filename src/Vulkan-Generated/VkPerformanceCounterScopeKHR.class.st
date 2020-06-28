Class {
	#name : #VkPerformanceCounterScopeKHR,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPerformanceCounterScopeKHR class >> VK_PERFORMANCE_COUNTER_SCOPE_COMMAND_BUFFER_KHR [

	^ self on: (0)
]

{ #category : #'as yet unclassified' }
VkPerformanceCounterScopeKHR class >> VK_PERFORMANCE_COUNTER_SCOPE_COMMAND_KHR [

	^ self on: (2)
]

{ #category : #'as yet unclassified' }
VkPerformanceCounterScopeKHR class >> VK_PERFORMANCE_COUNTER_SCOPE_RENDER_PASS_KHR [

	^ self on: (1)
]

{ #category : #'as yet unclassified' }
VkPerformanceCounterScopeKHR class >> VK_QUERY_SCOPE_COMMAND_BUFFER_KHR [

	^ self on: (self VK_PERFORMANCE_COUNTER_SCOPE_COMMAND_BUFFER_KHR)
]

{ #category : #'as yet unclassified' }
VkPerformanceCounterScopeKHR class >> VK_QUERY_SCOPE_COMMAND_KHR [

	^ self on: (self VK_PERFORMANCE_COUNTER_SCOPE_COMMAND_KHR)
]

{ #category : #'as yet unclassified' }
VkPerformanceCounterScopeKHR class >> VK_QUERY_SCOPE_RENDER_PASS_KHR [

	^ self on: (self VK_PERFORMANCE_COUNTER_SCOPE_RENDER_PASS_KHR)
]

{ #category : #'as yet unclassified' }
VkPerformanceCounterScopeKHR class >> originalTypeName [

    ^ 'long'
]
