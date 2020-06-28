Class {
	#name : #VkExternalMemoryHandleTypeFlagsNV,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExternalMemoryHandleTypeFlagsNV class >> VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_BIT_NV [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkExternalMemoryHandleTypeFlagsNV class >> VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_KMT_BIT_NV [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkExternalMemoryHandleTypeFlagsNV class >> VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_NV [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkExternalMemoryHandleTypeFlagsNV class >> VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_NV [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkExternalMemoryHandleTypeFlagsNV class >> originalTypeName [

    ^ 'long'
]
