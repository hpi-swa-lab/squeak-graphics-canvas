Class {
	#name : #VkPipelineExecutableInternalRepresentationKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineExecutableInternalRepresentationKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(name 'char[256]')
		(description 'char[256]')
		(isText 'VkBool32')
		(dataSize 'size_t')
		(pData 'void*')
	)
]
