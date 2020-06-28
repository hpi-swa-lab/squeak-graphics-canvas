Class {
	#name : #VkCommandPoolCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkCommandPoolCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkCommandPoolCreateFlags')
		(queueFamilyIndex 'uint32_t')
	)
]
