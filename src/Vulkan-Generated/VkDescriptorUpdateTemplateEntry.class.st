Class {
	#name : #VkDescriptorUpdateTemplateEntry,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDescriptorUpdateTemplateEntry class >> fields [

	^ #(
		(dstBinding 'uint32_t')
		(dstArrayElement 'uint32_t')
		(descriptorCount 'uint32_t')
		(descriptorType 'VkDescriptorType')
		(offset 'size_t')
		(stride 'size_t')
	)
]
