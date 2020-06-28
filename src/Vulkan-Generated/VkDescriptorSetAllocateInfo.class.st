Class {
	#name : #VkDescriptorSetAllocateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDescriptorSetAllocateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(descriptorPool 'VkDescriptorPool')
		(descriptorSetCount 'uint32_t')
		(pSetLayouts 'VkDescriptorSetLayout*')
	)
]
