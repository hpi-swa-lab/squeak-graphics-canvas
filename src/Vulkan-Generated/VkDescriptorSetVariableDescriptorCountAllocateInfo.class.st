Class {
	#name : #VkDescriptorSetVariableDescriptorCountAllocateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDescriptorSetVariableDescriptorCountAllocateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(descriptorSetCount 'uint32_t')
		(pDescriptorCounts 'uint32_t*')
	)
]
