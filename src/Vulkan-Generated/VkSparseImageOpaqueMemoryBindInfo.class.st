Class {
	#name : #VkSparseImageOpaqueMemoryBindInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSparseImageOpaqueMemoryBindInfo class >> fields [

	^ #(
		(image 'VkImage')
		(bindCount 'uint32_t')
		(pBinds 'VkSparseMemoryBind*')
	)
]
