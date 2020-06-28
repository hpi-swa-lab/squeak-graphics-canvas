Class {
	#name : #VkColorComponentFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkColorComponentFlags class >> VK_COLOR_COMPONENT_A_BIT [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkColorComponentFlags class >> VK_COLOR_COMPONENT_B_BIT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkColorComponentFlags class >> VK_COLOR_COMPONENT_G_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkColorComponentFlags class >> VK_COLOR_COMPONENT_R_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkColorComponentFlags class >> originalTypeName [

    ^ 'long'
]
