Class {
	#name : #VkExternalMemoryHandleTypeFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExternalMemoryHandleTypeFlags class >> VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_BIT [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkExternalMemoryHandleTypeFlags class >> VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_KMT_BIT [

	^ self on: (1 bitShift: 4)
]

{ #category : #'as yet unclassified' }
VkExternalMemoryHandleTypeFlags class >> VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP_BIT [

	^ self on: (1 bitShift: 5)
]

{ #category : #'as yet unclassified' }
VkExternalMemoryHandleTypeFlags class >> VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE_BIT [

	^ self on: (1 bitShift: 6)
]

{ #category : #'as yet unclassified' }
VkExternalMemoryHandleTypeFlags class >> VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_FD_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkExternalMemoryHandleTypeFlags class >> VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkExternalMemoryHandleTypeFlags class >> VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkExternalMemoryHandleTypeFlags class >> originalTypeName [

    ^ 'long'
]
