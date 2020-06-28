Class {
	#name : #VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(perViewPositionAllComponents 'VkBool32')
	)
]
