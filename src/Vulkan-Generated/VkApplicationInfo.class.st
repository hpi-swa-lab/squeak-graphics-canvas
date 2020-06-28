Class {
	#name : #VkApplicationInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkApplicationInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(pApplicationName 'char*')
		(applicationVersion 'uint32_t')
		(pEngineName 'char*')
		(engineVersion 'uint32_t')
		(apiVersion 'uint32_t')
	)
]
