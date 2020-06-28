Class {
	#name : #VkDescriptorPoolCreateFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDescriptorPoolCreateFlags class >> VK_DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkDescriptorPoolCreateFlags class >> originalTypeName [

    ^ 'long'
]
