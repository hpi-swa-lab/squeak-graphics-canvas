Class {
	#name : #VkPipelineExecutableStatisticKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineExecutableStatisticKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(name 'char')
		(description 'char')
		(format 'VkPipelineExecutableStatisticFormatKHR')
		(value 'VkPipelineExecutableStatisticValueKHR')
	)
]
