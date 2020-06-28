Class {
	#name : #VkDebugUtilsObjectTagInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDebugUtilsObjectTagInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(objectType 'VkObjectType')
		(objectHandle 'uint64_t')
		(tagName 'uint64_t')
		(tagSize 'size_t')
		(pTag 'void*')
	)
]
