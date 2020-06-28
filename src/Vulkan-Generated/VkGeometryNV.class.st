Class {
	#name : #VkGeometryNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkGeometryNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(geometryType 'VkGeometryTypeKHR')
		(geometry 'VkGeometryDataNV')
		(flags 'VkGeometryFlagsKHR')
	)
]
