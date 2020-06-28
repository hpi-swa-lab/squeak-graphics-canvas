Class {
	#name : #VkTextureLODGatherFormatPropertiesAMD,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkTextureLODGatherFormatPropertiesAMD class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(supportsTextureGatherLODBiasAMD 'VkBool32')
	)
]
