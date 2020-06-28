Class {
	#name : #VkCopyAccelerationStructureToMemoryInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkCopyAccelerationStructureToMemoryInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(src 'VkAccelerationStructureKHR')
		(dst 'VkDeviceOrHostAddressKHR')
		(mode 'VkCopyAccelerationStructureModeKHR')
	)
]
