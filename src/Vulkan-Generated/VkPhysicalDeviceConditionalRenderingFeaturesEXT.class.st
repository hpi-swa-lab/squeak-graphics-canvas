Class {
	#name : #VkPhysicalDeviceConditionalRenderingFeaturesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceConditionalRenderingFeaturesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(conditionalRendering 'VkBool32')
		(inheritedConditionalRendering 'VkBool32')
	)
]
