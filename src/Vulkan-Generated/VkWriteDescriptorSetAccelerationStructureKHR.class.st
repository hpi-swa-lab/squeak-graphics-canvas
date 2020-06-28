Class {
	#name : #VkWriteDescriptorSetAccelerationStructureKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkWriteDescriptorSetAccelerationStructureKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(accelerationStructureCount 'uint32_t')
		(pAccelerationStructures 'VkAccelerationStructureKHR*')
	)
]
