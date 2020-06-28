Class {
	#name : #VkPhysicalDeviceExtendedDynamicStateFeaturesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceExtendedDynamicStateFeaturesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(extendedDynamicState 'VkBool32')
	)
]
