Class {
	#name : #VkPhysicalDeviceIDProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceIDProperties class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(deviceUUID 'uint8_t[16]')
		(driverUUID 'uint8_t[16]')
		(deviceLUID 'uint8_t[8]')
		(deviceNodeMask 'uint32_t')
		(deviceLUIDValid 'VkBool32')
	)
]
