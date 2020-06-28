Class {
	#name : #VkPhysicalDevicePushDescriptorPropertiesKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDevicePushDescriptorPropertiesKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(maxPushDescriptors 'uint32_t')
	)
]
