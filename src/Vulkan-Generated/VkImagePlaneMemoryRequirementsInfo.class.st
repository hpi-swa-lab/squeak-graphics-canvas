Class {
	#name : #VkImagePlaneMemoryRequirementsInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImagePlaneMemoryRequirementsInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(planeAspect 'VkImageAspectFlags')
	)
]
