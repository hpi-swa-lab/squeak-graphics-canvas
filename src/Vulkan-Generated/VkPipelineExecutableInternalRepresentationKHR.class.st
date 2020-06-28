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
		(name 'char')
		(description 'char')
		(isText 'VkBool32')
		(dataSize 'size_t')
		(pData 'void*')
	)
]
