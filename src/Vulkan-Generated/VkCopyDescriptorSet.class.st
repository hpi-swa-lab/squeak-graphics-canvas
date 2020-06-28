Class {
	#name : #VkCopyDescriptorSet,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkCopyDescriptorSet class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(srcSet 'VkDescriptorSet')
		(srcBinding 'uint32_t')
		(srcArrayElement 'uint32_t')
		(dstSet 'VkDescriptorSet')
		(dstBinding 'uint32_t')
		(dstArrayElement 'uint32_t')
		(descriptorCount 'uint32_t')
	)
]
