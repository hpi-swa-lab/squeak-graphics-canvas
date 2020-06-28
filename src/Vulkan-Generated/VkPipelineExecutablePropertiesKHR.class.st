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
		(name 'char')
		(description 'char')
		(subgroupSize 'uint32_t')
	)
]
