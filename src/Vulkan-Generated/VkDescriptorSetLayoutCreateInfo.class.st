Class {
	#name : #VkDescriptorSetLayoutCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDescriptorSetLayoutCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkDescriptorSetLayoutCreateFlags')
		(bindingCount 'uint32_t')
		(pBindings 'VkDescriptorSetLayoutBinding*')
	)
]
