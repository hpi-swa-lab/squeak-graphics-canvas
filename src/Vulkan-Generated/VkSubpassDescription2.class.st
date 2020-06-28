Class {
	#name : #VkSubpassDescription2,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSubpassDescription2 class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkSubpassDescriptionFlags')
		(pipelineBindPoint 'VkPipelineBindPoint')
		(viewMask 'uint32_t')
		(inputAttachmentCount 'uint32_t')
		(pInputAttachments 'VkAttachmentReference2*')
		(colorAttachmentCount 'uint32_t')
		(pColorAttachments 'VkAttachmentReference2*')
		(pResolveAttachments 'VkAttachmentReference2*')
		(pDepthStencilAttachment 'VkAttachmentReference2*')
		(preserveAttachmentCount 'uint32_t')
		(pPreserveAttachments 'uint32_t*')
	)
]
