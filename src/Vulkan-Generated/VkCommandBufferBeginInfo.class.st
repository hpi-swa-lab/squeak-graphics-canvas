Class {
	#name : #VkCommandBufferBeginInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkCommandBufferBeginInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkCommandBufferUsageFlags')
		(pInheritanceInfo 'VkCommandBufferInheritanceInfo*')
	)
]
