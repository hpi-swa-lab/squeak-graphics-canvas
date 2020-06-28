Class {
	#name : #VkSamplerCustomBorderColorCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSamplerCustomBorderColorCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(customBorderColor 'VkClearColorValue')
		(format 'VkFormat')
	)
]
