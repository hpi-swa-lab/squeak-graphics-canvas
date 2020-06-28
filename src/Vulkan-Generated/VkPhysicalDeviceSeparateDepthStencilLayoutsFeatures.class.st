Class {
	#name : #VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(separateDepthStencilLayouts 'VkBool32')
	)
]
