Class {
	#name : #VkExternalMemoryImageCreateInfoNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExternalMemoryImageCreateInfoNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(handleTypes 'VkExternalMemoryHandleTypeFlagsNV')
	)
]
