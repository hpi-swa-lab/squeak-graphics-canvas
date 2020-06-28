Class {
	#name : #VkAndroidHardwareBufferPropertiesANDROID,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAndroidHardwareBufferPropertiesANDROID class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(allocationSize 'VkDeviceSize')
		(memoryTypeBits 'uint32_t')
	)
]
