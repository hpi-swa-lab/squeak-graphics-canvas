Class {
	#name : #VkDebugMarkerMarkerInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDebugMarkerMarkerInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(pMarkerName 'char*')
		(color 'float')
	)
]
