Class {
	#name : #VkExternalSemaphoreHandleTypeFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExternalSemaphoreHandleTypeFlags class >> VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D12_FENCE_BIT [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkExternalSemaphoreHandleTypeFlags class >> VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_FD_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkExternalSemaphoreHandleTypeFlags class >> VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkExternalSemaphoreHandleTypeFlags class >> VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkExternalSemaphoreHandleTypeFlags class >> VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_SYNC_FD_BIT [

	^ self on: (1 bitShift: 4)
]

{ #category : #'as yet unclassified' }
VkExternalSemaphoreHandleTypeFlags class >> originalTypeName [

    ^ 'long'
]
