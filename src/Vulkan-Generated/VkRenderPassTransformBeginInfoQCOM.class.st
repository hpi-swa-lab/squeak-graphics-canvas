Class {
	#name : #VkRenderPassTransformBeginInfoQCOM,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkRenderPassTransformBeginInfoQCOM class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(transform 'VkSurfaceTransformFlagsKHR')
	)
]
