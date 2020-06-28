Class {
	#name : #VkMemoryGetAndroidHardwareBufferInfoANDROID,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkMemoryGetAndroidHardwareBufferInfoANDROID class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(memory 'VkDeviceMemory')
	)
]
