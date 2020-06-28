Class {
	#name : #VkAttachmentDescriptionFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAttachmentDescriptionFlags class >> VK_ATTACHMENT_DESCRIPTION_MAY_ALIAS_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkAttachmentDescriptionFlags class >> originalTypeName [

    ^ 'long'
]
