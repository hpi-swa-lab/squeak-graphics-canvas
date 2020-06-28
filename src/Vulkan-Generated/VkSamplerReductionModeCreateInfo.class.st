Class {
	#name : #VkSamplerReductionModeCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSamplerReductionModeCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(reductionMode 'VkSamplerReductionMode')
	)
]
