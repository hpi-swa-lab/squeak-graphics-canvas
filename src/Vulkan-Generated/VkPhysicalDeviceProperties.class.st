Class {
	#name : #VkPhysicalDeviceProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceProperties class >> fields [

	^ #(
		(apiVersion 'uint32_t')
		(driverVersion 'uint32_t')
		(vendorID 'uint32_t')
		(deviceID 'uint32_t')
		(deviceType 'VkPhysicalDeviceType')
		(deviceName 'char[256]')
		(pipelineCacheUUID 'uint8_t[16]')
		(limits 'VkPhysicalDeviceLimits')
		(sparseProperties 'VkPhysicalDeviceSparseProperties')
	)
]
