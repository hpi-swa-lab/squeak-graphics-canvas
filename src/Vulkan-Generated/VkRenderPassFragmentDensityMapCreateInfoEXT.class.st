Class {
	#name : #VkRenderPassFragmentDensityMapCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkRenderPassFragmentDensityMapCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(fragmentDensityMapAttachment 'VkAttachmentReference')
	)
]
