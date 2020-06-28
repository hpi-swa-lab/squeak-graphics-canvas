Class {
	#name : #VkGeometryDataNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkGeometryDataNV class >> fields [

	^ #(
		(triangles 'VkGeometryTrianglesNV')
		(aabbs 'VkGeometryAABBNV')
	)
]
