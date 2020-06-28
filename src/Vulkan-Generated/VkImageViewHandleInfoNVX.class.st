Class {
	#name : #VkImageViewHandleInfoNVX,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImageViewHandleInfoNVX class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(imageView 'VkImageView')
		(descriptorType 'VkDescriptorType')
		(sampler 'VkSampler')
	)
]
