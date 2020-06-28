Class {
	#name : #VkPipelineExecutableInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineExecutableInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(pipeline 'VkPipeline')
		(executableIndex 'uint32_t')
	)
]
