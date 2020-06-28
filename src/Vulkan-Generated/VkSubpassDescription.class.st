Class {
	#name : #VkSubpassDescription,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSubpassDescription class >> fields [

	^ #(
		(flags 'VkSubpassDescriptionFlags')
		(pipelineBindPoint 'VkPipelineBindPoint')
		(inputAttachmentCount 'uint32_t')
		(pInputAttachments 'VkAttachmentReference*')
		(colorAttachmentCount 'uint32_t')
		(pColorAttachments 'VkAttachmentReference*')
		(pResolveAttachments 'VkAttachmentReference*')
		(pDepthStencilAttachment 'VkAttachmentReference*')
		(preserveAttachmentCount 'uint32_t')
		(pPreserveAttachments 'uint32_t*')
	)
]
