Class {
	#name : #VkAccelerationStructureGeometryAabbsDataKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAccelerationStructureGeometryAabbsDataKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(data 'VkDeviceOrHostAddressConstKHR')
		(stride 'VkDeviceSize')
	)
]
