Class {
	#name : #VkValidationFlagsEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkValidationFlagsEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(disabledValidationCheckCount 'uint32_t')
		(pDisabledValidationChecks 'VkValidationCheckEXT*')
	)
]
