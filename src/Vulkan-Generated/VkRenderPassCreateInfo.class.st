Class {
	#name : #VkRenderPassCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkRenderPassCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkRenderPassCreateFlags')
		(attachmentCount 'uint32_t')
		(pAttachments 'VkAttachmentDescription*')
		(subpassCount 'uint32_t')
		(pSubpasses 'VkSubpassDescription*')
		(dependencyCount 'uint32_t')
		(pDependencies 'VkSubpassDependency*')
	)
]
