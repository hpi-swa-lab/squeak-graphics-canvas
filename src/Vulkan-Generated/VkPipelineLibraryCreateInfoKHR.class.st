Class {
	#name : #VkPipelineLibraryCreateInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineLibraryCreateInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(libraryCount 'uint32_t')
		(pLibraries 'VkPipeline*')
	)
]
