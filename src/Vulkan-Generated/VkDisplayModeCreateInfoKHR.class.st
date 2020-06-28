Class {
	#name : #VkDisplayModeCreateInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDisplayModeCreateInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkDisplayModeCreateFlagsKHR')
		(parameters 'VkDisplayModeParametersKHR')
	)
]
