Class {
	#name : #VkIndirectCommandsStreamNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkIndirectCommandsStreamNV class >> fields [

	^ #(
		(buffer 'VkBuffer')
		(offset 'VkDeviceSize')
	)
]
