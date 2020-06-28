Class {
	#name : #VkImagePipeSurfaceCreateInfoFUCHSIA,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImagePipeSurfaceCreateInfoFUCHSIA class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkImagePipeSurfaceCreateFlagsFUCHSIA')
		(imagePipeHandle 'void')
	)
]
