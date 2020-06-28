Class {
	#name : #VkDebugUtilsLabelEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDebugUtilsLabelEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(pLabelName 'char*')
		(color 'float')
	)
]
