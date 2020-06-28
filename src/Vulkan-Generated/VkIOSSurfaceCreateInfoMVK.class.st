Class {
	#name : #VkIOSSurfaceCreateInfoMVK,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkIOSSurfaceCreateInfoMVK class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkIOSSurfaceCreateFlagsMVK')
		(pView 'void*')
	)
]
