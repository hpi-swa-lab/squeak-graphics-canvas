Class {
	#name : #VkExternalFormatANDROID,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExternalFormatANDROID class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(externalFormat 'uint64_t')
	)
]
