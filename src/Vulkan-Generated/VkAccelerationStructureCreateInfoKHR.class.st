Class {
	#name : #VkAccelerationStructureCreateInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAccelerationStructureCreateInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(compactedSize 'VkDeviceSize')
		(type 'VkAccelerationStructureTypeKHR')
		(flags 'VkBuildAccelerationStructureFlagsKHR')
		(maxGeometryCount 'uint32_t')
		(pGeometryInfos 'VkAccelerationStructureCreateGeometryTypeInfoKHR*')
		(deviceAddress 'VkDeviceAddress')
	)
]
