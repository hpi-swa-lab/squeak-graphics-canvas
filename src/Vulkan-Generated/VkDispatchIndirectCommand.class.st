Class {
	#name : #VkDispatchIndirectCommand,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDispatchIndirectCommand class >> fields [

	^ #(
		(x 'uint32_t')
		(y 'uint32_t')
		(z 'uint32_t')
	)
]
