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
		(physicalDevices 'VkPhysicalDevice')
		(subsetAllocation 'VkBool32')
	)
]
