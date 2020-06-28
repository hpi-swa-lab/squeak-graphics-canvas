Class {
	#name : #VkSparseImageMemoryBindInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSparseImageMemoryBindInfo class >> fields [

	^ #(
		(image 'VkImage')
		(bindCount 'uint32_t')
		(pBinds 'VkSparseImageMemoryBind*')
	)
]
