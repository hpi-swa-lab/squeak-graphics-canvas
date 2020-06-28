Class {
	#name : #VkImageSparseMemoryRequirementsInfo2,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImageSparseMemoryRequirementsInfo2 class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(image 'VkImage')
	)
]
