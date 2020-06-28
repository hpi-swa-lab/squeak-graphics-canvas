Class {
	#name : #VkAndroidHardwareBufferUsageANDROID,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAndroidHardwareBufferUsageANDROID class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(androidHardwareBufferUsage 'uint64_t')
	)
]
