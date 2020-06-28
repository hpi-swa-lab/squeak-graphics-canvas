Class {
	#name : #VkSubpassSampleLocationsEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSubpassSampleLocationsEXT class >> fields [

	^ #(
		(subpassIndex 'uint32_t')
		(sampleLocationsInfo 'VkSampleLocationsInfoEXT')
	)
]
