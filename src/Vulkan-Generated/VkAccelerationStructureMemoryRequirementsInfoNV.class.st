Class {
	#name : #VkAccelerationStructureMemoryRequirementsInfoNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAccelerationStructureMemoryRequirementsInfoNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(type 'VkAccelerationStructureMemoryRequirementsTypeNV')
		(accelerationStructure 'VkAccelerationStructureNV')
	)
]
