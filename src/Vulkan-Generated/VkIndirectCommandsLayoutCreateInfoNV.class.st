Class {
	#name : #VkIndirectCommandsLayoutCreateInfoNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkIndirectCommandsLayoutCreateInfoNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkIndirectCommandsLayoutUsageFlagsNV')
		(pipelineBindPoint 'VkPipelineBindPoint')
		(tokenCount 'uint32_t')
		(pTokens 'VkIndirectCommandsLayoutTokenNV*')
		(streamCount 'uint32_t')
		(pStreamStrides 'uint32_t*')
	)
]
