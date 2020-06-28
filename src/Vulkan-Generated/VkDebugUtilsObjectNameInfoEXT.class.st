Class {
	#name : #VkDebugUtilsObjectNameInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDebugUtilsObjectNameInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(objectType 'VkObjectType')
		(objectHandle 'uint64_t')
		(pObjectName 'char*')
	)
]
