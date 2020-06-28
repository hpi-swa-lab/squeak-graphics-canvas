Class {
	#name : #VkSpecializationInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSpecializationInfo class >> fields [

	^ #(
		(mapEntryCount 'uint32_t')
		(pMapEntries 'VkSpecializationMapEntry*')
		(dataSize 'size_t')
		(pData 'void*')
	)
]
