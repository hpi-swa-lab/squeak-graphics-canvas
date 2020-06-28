Class {
	#name : #VkDrawMeshTasksIndirectCommandNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDrawMeshTasksIndirectCommandNV class >> fields [

	^ #(
		(taskCount 'uint32_t')
		(firstTask 'uint32_t')
	)
]
