Class {
	#name : #VkDeviceDiagnosticsConfigFlagsNV,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDeviceDiagnosticsConfigFlagsNV class >> VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_AUTOMATIC_CHECKPOINTS_BIT_NV [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkDeviceDiagnosticsConfigFlagsNV class >> VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_RESOURCE_TRACKING_BIT_NV [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkDeviceDiagnosticsConfigFlagsNV class >> VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_SHADER_DEBUG_INFO_BIT_NV [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkDeviceDiagnosticsConfigFlagsNV class >> originalTypeName [

    ^ 'long'
]
