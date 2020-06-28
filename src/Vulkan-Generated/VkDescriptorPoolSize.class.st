Class {
	#name : #VkDescriptorPoolSize,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDescriptorPoolSize class >> fields [

	^ #(
		(type 'VkDescriptorType')
		(descriptorCount 'uint32_t')
	)
]
