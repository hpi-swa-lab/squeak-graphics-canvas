Class {
	#name : #VkPhysicalDeviceGroupProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceGroupProperties class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(physicalDeviceCount 'uint32_t')
		(physicalDevices 'VkPhysicalDevice[32]')
		(subsetAllocation 'VkBool32')
	)
]
