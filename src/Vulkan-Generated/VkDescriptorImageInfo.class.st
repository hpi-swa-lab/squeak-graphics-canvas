Class {
	#name : #VkDescriptorImageInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDescriptorImageInfo class >> fields [

	^ #(
		(sampler 'VkSampler')
		(imageView 'VkImageView')
		(imageLayout 'VkImageLayout')
	)
]
