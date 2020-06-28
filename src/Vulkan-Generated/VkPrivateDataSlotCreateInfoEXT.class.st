Class {
	#name : #VkPrivateDataSlotCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPrivateDataSlotCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkPrivateDataSlotCreateFlagsEXT')
	)
]
