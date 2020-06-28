Class {
	#name : #VkPhysicalDeviceInlineUniformBlockFeaturesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceInlineUniformBlockFeaturesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(inlineUniformBlock 'VkBool32')
		(descriptorBindingInlineUniformBlockUpdateAfterBind 'VkBool32')
	)
]
