Class {
	#name : #VkPipelineCacheCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineCacheCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkPipelineCacheCreateFlags')
		(initialDataSize 'size_t')
		(pInitialData 'void*')
	)
]
