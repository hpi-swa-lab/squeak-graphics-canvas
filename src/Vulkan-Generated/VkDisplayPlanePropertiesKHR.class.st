Class {
	#name : #VkDisplayPlanePropertiesKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDisplayPlanePropertiesKHR class >> fields [

	^ #(
		(currentDisplay 'VkDisplayKHR')
		(currentStackIndex 'uint32_t')
	)
]
