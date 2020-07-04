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
		(name 'char[256]')
		(description 'char[256]')
		(format 'VkPipelineExecutableStatisticFormatKHR')
		(value 'VkPipelineExecutableStatisticValueKHR')
	)
]
