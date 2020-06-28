Class {
	#name : #VkDescriptorBindingFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDescriptorBindingFlags class >> VK_DESCRIPTOR_BINDING_PARTIALLY_BOUND_BIT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkDescriptorBindingFlags class >> VK_DESCRIPTOR_BINDING_UPDATE_AFTER_BIND_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkDescriptorBindingFlags class >> VK_DESCRIPTOR_BINDING_UPDATE_UNUSED_WHILE_PENDING_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkDescriptorBindingFlags class >> VK_DESCRIPTOR_BINDING_VARIABLE_DESCRIPTOR_COUNT_BIT [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkDescriptorBindingFlags class >> originalTypeName [

    ^ 'long'
]
