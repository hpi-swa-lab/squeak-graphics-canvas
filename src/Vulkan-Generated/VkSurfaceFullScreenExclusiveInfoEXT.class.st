Class {
	#name : #VkSurfaceFullScreenExclusiveInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSurfaceFullScreenExclusiveInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(fullScreenExclusive 'VkFullScreenExclusiveEXT')
	)
]
