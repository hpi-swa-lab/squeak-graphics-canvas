Class {
	#name : #VkDescriptorPoolCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDescriptorPoolCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkDescriptorPoolCreateFlags')
		(maxSets 'uint32_t')
		(poolSizeCount 'uint32_t')
		(pPoolSizes 'VkDescriptorPoolSize*')
	)
]
