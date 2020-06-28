Class {
	#name : #VkExternalFenceHandleTypeFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExternalFenceHandleTypeFlags class >> VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_FD_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkExternalFenceHandleTypeFlags class >> VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkExternalFenceHandleTypeFlags class >> VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkExternalFenceHandleTypeFlags class >> VK_EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkExternalFenceHandleTypeFlags class >> originalTypeName [

    ^ 'long'
]
