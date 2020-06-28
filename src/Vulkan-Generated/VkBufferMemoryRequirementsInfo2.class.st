Class {
	#name : #VkBufferMemoryRequirementsInfo2,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkBufferMemoryRequirementsInfo2 class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(buffer 'VkBuffer')
	)
]
