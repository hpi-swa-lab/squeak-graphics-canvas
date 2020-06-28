Class {
	#name : #VkDedicatedAllocationImageCreateInfoNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDedicatedAllocationImageCreateInfoNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(dedicatedAllocation 'VkBool32')
	)
]
