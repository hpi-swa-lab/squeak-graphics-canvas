Class {
	#name : #VkRenderPassSampleLocationsBeginInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkRenderPassSampleLocationsBeginInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(attachmentInitialSampleLocationsCount 'uint32_t')
		(pAttachmentInitialSampleLocations 'VkAttachmentSampleLocationsEXT*')
		(postSubpassSampleLocationsCount 'uint32_t')
		(pPostSubpassSampleLocations 'VkSubpassSampleLocationsEXT*')
	)
]
