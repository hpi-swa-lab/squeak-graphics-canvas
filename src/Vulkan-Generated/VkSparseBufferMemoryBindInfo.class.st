Class {
	#name : #VkSparseBufferMemoryBindInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSparseBufferMemoryBindInfo class >> fields [

	^ #(
		(buffer 'VkBuffer')
		(bindCount 'uint32_t')
		(pBinds 'VkSparseMemoryBind*')
	)
]
