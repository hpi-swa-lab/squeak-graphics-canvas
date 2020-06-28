Class {
	#name : #VkDedicatedAllocationBufferCreateInfoNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDedicatedAllocationBufferCreateInfoNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(dedicatedAllocation 'VkBool32')
	)
]
