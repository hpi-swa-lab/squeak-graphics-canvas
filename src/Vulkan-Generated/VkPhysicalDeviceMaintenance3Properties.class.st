Class {
	#name : #VkPhysicalDeviceMaintenance3Properties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceMaintenance3Properties class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(maxPerSetDescriptors 'uint32_t')
		(maxMemoryAllocationSize 'VkDeviceSize')
	)
]
