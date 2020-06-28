Class {
	#name : #VkFilterCubicImageViewImageFormatPropertiesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkFilterCubicImageViewImageFormatPropertiesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(filterCubic 'VkBool32')
		(filterCubicMinmax 'VkBool32')
	)
]
