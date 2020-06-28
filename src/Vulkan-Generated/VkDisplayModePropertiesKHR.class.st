Class {
	#name : #VkDisplayModePropertiesKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDisplayModePropertiesKHR class >> fields [

	^ #(
		(displayMode 'VkDisplayModeKHR')
		(parameters 'VkDisplayModeParametersKHR')
	)
]
