Class {
	#name : #VkAccelerationStructureCreateInfoNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAccelerationStructureCreateInfoNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(compactedSize 'VkDeviceSize')
		(info 'VkAccelerationStructureInfoNV')
	)
]
