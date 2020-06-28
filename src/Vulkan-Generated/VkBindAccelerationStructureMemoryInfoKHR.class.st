Class {
	#name : #VkBindAccelerationStructureMemoryInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkBindAccelerationStructureMemoryInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(accelerationStructure 'VkAccelerationStructureKHR')
		(memory 'VkDeviceMemory')
		(memoryOffset 'VkDeviceSize')
		(deviceIndexCount 'uint32_t')
		(pDeviceIndices 'uint32_t*')
	)
]
