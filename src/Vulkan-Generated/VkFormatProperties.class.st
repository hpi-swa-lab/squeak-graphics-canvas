Class {
	#name : #VkFormatProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkFormatProperties class >> fields [

	^ #(
		(linearTilingFeatures 'VkFormatFeatureFlags')
		(optimalTilingFeatures 'VkFormatFeatureFlags')
		(bufferFeatures 'VkFormatFeatureFlags')
	)
]
