Class {
	#name : #VkAccelerationStructureGeometryInstancesDataKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAccelerationStructureGeometryInstancesDataKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(arrayOfPointers 'VkBool32')
		(data 'VkDeviceOrHostAddressConstKHR')
	)
]
