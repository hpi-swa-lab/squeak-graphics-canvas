Class {
	#name : #VkQueueFamilyProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkQueueFamilyProperties class >> fields [

	^ #(
		(queueFlags 'VkQueueFlags')
		(queueCount 'uint32_t')
		(timestampValidBits 'uint32_t')
		(minImageTransferGranularity 'VkExtent3D')
	)
]
