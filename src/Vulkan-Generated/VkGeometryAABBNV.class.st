Class {
	#name : #VkGeometryAABBNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkGeometryAABBNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(aabbData 'VkBuffer')
		(numAABBs 'uint32_t')
		(stride 'uint32_t')
		(offset 'VkDeviceSize')
	)
]
