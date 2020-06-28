Class {
	#name : #VkMacOSSurfaceCreateInfoMVK,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkMacOSSurfaceCreateInfoMVK class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkMacOSSurfaceCreateFlagsMVK')
		(pView 'void*')
	)
]
