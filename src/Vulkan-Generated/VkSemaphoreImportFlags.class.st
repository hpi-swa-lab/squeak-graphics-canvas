Class {
	#name : #VkSemaphoreImportFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSemaphoreImportFlags class >> VK_SEMAPHORE_IMPORT_TEMPORARY_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkSemaphoreImportFlags class >> originalTypeName [

    ^ 'long'
]
