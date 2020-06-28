Class {
	#name : #VkPhysicalDeviceImageDrmFormatModifierInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceImageDrmFormatModifierInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(drmFormatModifier 'uint64_t')
		(sharingMode 'VkSharingMode')
		(queueFamilyIndexCount 'uint32_t')
		(pQueueFamilyIndices 'uint32_t*')
	)
]
