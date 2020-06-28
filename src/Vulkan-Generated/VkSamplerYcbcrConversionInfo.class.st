Class {
	#name : #VkSamplerYcbcrConversionInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSamplerYcbcrConversionInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(conversion 'VkSamplerYcbcrConversion')
	)
]
