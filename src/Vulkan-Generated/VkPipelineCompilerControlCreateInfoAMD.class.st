Class {
	#name : #VkPipelineCompilerControlCreateInfoAMD,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineCompilerControlCreateInfoAMD class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(compilerControlFlags 'VkPipelineCompilerControlFlagsAMD')
	)
]
