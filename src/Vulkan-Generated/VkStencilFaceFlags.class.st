Class {
	#name : #VkStencilFaceFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkStencilFaceFlags class >> VK_STENCIL_FACE_BACK_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkStencilFaceFlags class >> VK_STENCIL_FACE_FRONT_AND_BACK [

	^ self on: (0x00000003)
]

{ #category : #'as yet unclassified' }
VkStencilFaceFlags class >> VK_STENCIL_FACE_FRONT_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkStencilFaceFlags class >> VK_STENCIL_FRONT_AND_BACK [

	^ self on: (self VK_STENCIL_FACE_FRONT_AND_BACK)
]

{ #category : #'as yet unclassified' }
VkStencilFaceFlags class >> originalTypeName [

    ^ 'long'
]
