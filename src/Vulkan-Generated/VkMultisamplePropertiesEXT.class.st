Class {
	#name : #VkMultisamplePropertiesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkMultisamplePropertiesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(maxSampleLocationGridSize 'VkExtent2D')
	)
]
