Class {
	#name : #VkImageMemoryRequirementsInfo2,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImageMemoryRequirementsInfo2 class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(image 'VkImage')
	)
]
