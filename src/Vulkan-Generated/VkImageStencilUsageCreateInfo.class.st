Class {
	#name : #VkImageStencilUsageCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImageStencilUsageCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(stencilUsage 'VkImageUsageFlags')
	)
]
