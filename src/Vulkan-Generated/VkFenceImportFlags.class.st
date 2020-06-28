Class {
	#name : #VkFenceImportFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkFenceImportFlags class >> VK_FENCE_IMPORT_TEMPORARY_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkFenceImportFlags class >> originalTypeName [

    ^ 'long'
]
