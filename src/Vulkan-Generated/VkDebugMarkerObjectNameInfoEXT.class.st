Class {
	#name : #VkDebugMarkerObjectNameInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDebugMarkerObjectNameInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(objectType 'VkDebugReportObjectTypeEXT')
		(object 'uint64_t')
		(pObjectName 'char*')
	)
]
