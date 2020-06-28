Class {
	#name : #VkBindImagePlaneMemoryInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkBindImagePlaneMemoryInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(planeAspect 'VkImageAspectFlags')
	)
]
