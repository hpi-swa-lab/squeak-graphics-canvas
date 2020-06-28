Class {
	#name : #VkAccelerationStructureMemoryRequirementsInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAccelerationStructureMemoryRequirementsInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(type 'VkAccelerationStructureMemoryRequirementsTypeKHR')
		(buildType 'VkAccelerationStructureBuildTypeKHR')
		(accelerationStructure 'VkAccelerationStructureKHR')
	)
]
