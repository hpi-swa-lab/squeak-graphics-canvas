Class {
	#name : #VkNativeBufferANDROID,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkNativeBufferANDROID class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(handle 'void*')
		(stride 'int')
		(format 'int')
		(usage 'int')
		(usage2 'VkNativeBufferUsage2ANDROID')
	)
]
