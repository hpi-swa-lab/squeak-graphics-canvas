Class {
	#name : #VkPipelineExecutablePropertiesKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineExecutablePropertiesKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(stages 'VkShaderStageFlags')
		(name 'char[256]')
		(description 'char[256]')
		(subgroupSize 'uint32_t')
	)
]
