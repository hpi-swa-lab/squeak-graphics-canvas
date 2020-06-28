Class {
	#name : #VkWriteDescriptorSet,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkWriteDescriptorSet class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(dstSet 'VkDescriptorSet')
		(dstBinding 'uint32_t')
		(dstArrayElement 'uint32_t')
		(descriptorCount 'uint32_t')
		(descriptorType 'VkDescriptorType')
		(pImageInfo 'VkDescriptorImageInfo*')
		(pBufferInfo 'VkDescriptorBufferInfo*')
		(pTexelBufferView 'VkBufferView*')
	)
]
