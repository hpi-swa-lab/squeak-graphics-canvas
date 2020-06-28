Class {
	#name : #VkDevicePrivateDataCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDevicePrivateDataCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(privateDataSlotRequestCount 'uint32_t')
	)
]
