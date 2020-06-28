Class {
	#name : #VkDescriptorSetLayoutBinding,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDescriptorSetLayoutBinding class >> fields [

	^ #(
		(binding 'uint32_t')
		(descriptorType 'VkDescriptorType')
		(descriptorCount 'uint32_t')
		(stageFlags 'VkShaderStageFlags')
		(pImmutableSamplers 'VkSampler*')
	)
]
