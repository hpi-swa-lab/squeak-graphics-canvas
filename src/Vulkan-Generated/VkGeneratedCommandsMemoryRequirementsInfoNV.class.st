Class {
	#name : #VkGeneratedCommandsMemoryRequirementsInfoNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkGeneratedCommandsMemoryRequirementsInfoNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(pipelineBindPoint 'VkPipelineBindPoint')
		(pipeline 'VkPipeline')
		(indirectCommandsLayout 'VkIndirectCommandsLayoutNV')
		(maxSequencesCount 'uint32_t')
	)
]
