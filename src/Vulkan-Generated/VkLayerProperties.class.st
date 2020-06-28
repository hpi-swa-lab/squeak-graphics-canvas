Class {
	#name : #VkLayerProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkLayerProperties class >> fields [

	^ #(
		(layerName 'char')
		(specVersion 'uint32_t')
		(implementationVersion 'uint32_t')
		(description 'char')
	)
]
