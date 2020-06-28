Class {
	#name : #VkPipelineShaderStageCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineShaderStageCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkPipelineShaderStageCreateFlags')
		(stage 'VkShaderStageFlags')
		(module 'VkShaderModule')
		(pName 'char*')
		(pSpecializationInfo 'VkSpecializationInfo*')
	)
]
