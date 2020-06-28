Class {
	#name : #VkMemoryDedicatedRequirements,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkMemoryDedicatedRequirements class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(prefersDedicatedAllocation 'VkBool32')
		(requiresDedicatedAllocation 'VkBool32')
	)
]
