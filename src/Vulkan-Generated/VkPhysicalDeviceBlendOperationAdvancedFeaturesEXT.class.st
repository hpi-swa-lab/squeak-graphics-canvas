Class {
	#name : #VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(advancedBlendCoherentOperations 'VkBool32')
	)
]
