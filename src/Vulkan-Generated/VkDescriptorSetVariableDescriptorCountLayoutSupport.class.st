Class {
	#name : #VkDescriptorSetVariableDescriptorCountLayoutSupport,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDescriptorSetVariableDescriptorCountLayoutSupport class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(maxVariableDescriptorCount 'uint32_t')
	)
]
