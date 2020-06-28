as yet unclassified
fields

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkRenderPassCreateFlags')
		(attachmentCount 'uint32_t')
		(pAttachments 'VkAttachmentDescription2*')
		(subpassCount 'uint32_t')
		(pSubpasses 'VkSubpassDescription2*')
		(dependencyCount 'uint32_t')
		(pDependencies 'VkSubpassDependency2*')
		(correlatedViewMaskCount 'uint32_t')
		(pCorrelatedViewMasks 'uint32_t*')
	)