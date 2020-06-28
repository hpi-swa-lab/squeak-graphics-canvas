Class {
	#name : #VkDeviceGroupDeviceCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDeviceGroupDeviceCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(physicalDeviceCount 'uint32_t')
		(pPhysicalDevices 'VkPhysicalDevice*')
	)
]
