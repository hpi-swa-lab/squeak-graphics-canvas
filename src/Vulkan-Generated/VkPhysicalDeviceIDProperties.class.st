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
		(deviceUUID 'uint8_t')
		(driverUUID 'uint8_t')
		(deviceLUID 'uint8_t')
		(deviceNodeMask 'uint32_t')
		(deviceLUIDValid 'VkBool32')
	)
]