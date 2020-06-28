Class {
	#name : #VkQueueFamilyCheckpointPropertiesNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkQueueFamilyCheckpointPropertiesNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(checkpointExecutionStageMask 'VkPipelineStageFlags')
	)
]
