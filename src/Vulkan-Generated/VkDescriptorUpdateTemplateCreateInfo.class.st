Class {
	#name : #VkDescriptorUpdateTemplateCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDescriptorUpdateTemplateCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkDescriptorUpdateTemplateCreateFlags')
		(descriptorUpdateEntryCount 'uint32_t')
		(pDescriptorUpdateEntries 'VkDescriptorUpdateTemplateEntry*')
		(templateType 'VkDescriptorUpdateTemplateType')
		(descriptorSetLayout 'VkDescriptorSetLayout')
		(pipelineBindPoint 'VkPipelineBindPoint')
		(pipelineLayout 'VkPipelineLayout')
		(set 'uint32_t')
	)
]
