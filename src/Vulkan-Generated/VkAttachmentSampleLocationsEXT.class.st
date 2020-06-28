Class {
	#name : #VkAttachmentSampleLocationsEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAttachmentSampleLocationsEXT class >> fields [

	^ #(
		(attachmentIndex 'uint32_t')
		(sampleLocationsInfo 'VkSampleLocationsInfoEXT')
	)
]
