Class {
	#name : #VkDebugMarkerObjectTagInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDebugMarkerObjectTagInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(objectType 'VkDebugReportObjectTypeEXT')
		(object 'uint64_t')
		(tagName 'uint64_t')
		(tagSize 'size_t')
		(pTag 'void*')
	)
]
