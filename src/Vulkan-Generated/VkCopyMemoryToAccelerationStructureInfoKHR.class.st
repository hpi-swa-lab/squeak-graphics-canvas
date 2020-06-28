Class {
	#name : #VkCopyMemoryToAccelerationStructureInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkCopyMemoryToAccelerationStructureInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(src 'VkDeviceOrHostAddressConstKHR')
		(dst 'VkAccelerationStructureKHR')
		(mode 'VkCopyAccelerationStructureModeKHR')
	)
]
