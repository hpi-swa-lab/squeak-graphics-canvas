Class {
	#name : #VkCopyAccelerationStructureInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkCopyAccelerationStructureInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(src 'VkAccelerationStructureKHR')
		(dst 'VkAccelerationStructureKHR')
		(mode 'VkCopyAccelerationStructureModeKHR')
	)
]
