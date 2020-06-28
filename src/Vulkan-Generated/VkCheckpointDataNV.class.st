Class {
	#name : #VkCheckpointDataNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkCheckpointDataNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(stage 'VkPipelineStageFlags')
		(pCheckpointMarker 'void*')
	)
]
