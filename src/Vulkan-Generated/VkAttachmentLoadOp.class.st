Class {
	#name : #VkAttachmentLoadOp,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAttachmentLoadOp class >> VK_ATTACHMENT_LOAD_OP_CLEAR [

	^ self on: (1)
]

{ #category : #'as yet unclassified' }
VkAttachmentLoadOp class >> VK_ATTACHMENT_LOAD_OP_DONT_CARE [

	^ self on: (2)
]

{ #category : #'as yet unclassified' }
VkAttachmentLoadOp class >> VK_ATTACHMENT_LOAD_OP_LOAD [

	^ self on: (0)
]

{ #category : #'as yet unclassified' }
VkAttachmentLoadOp class >> originalTypeName [

    ^ 'long'
]
