Class {
	#name : #VkDescriptorSetLayoutBindingFlagsCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDescriptorSetLayoutBindingFlagsCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(bindingCount 'uint32_t')
		(pBindingFlags 'VkDescriptorBindingFlags*')
	)
]
