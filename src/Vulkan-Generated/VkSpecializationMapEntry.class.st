Class {
	#name : #VkSpecializationMapEntry,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSpecializationMapEntry class >> fields [

	^ #(
		(constantID 'uint32_t')
		(offset 'uint32_t')
		(size 'size_t')
	)
]
