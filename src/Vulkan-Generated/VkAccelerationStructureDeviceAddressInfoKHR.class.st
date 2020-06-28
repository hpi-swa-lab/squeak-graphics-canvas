Class {
	#name : #VkAccelerationStructureDeviceAddressInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAccelerationStructureDeviceAddressInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(accelerationStructure 'VkAccelerationStructureKHR')
	)
]
