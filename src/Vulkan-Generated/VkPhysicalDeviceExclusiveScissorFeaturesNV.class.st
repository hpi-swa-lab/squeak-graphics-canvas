Class {
	#name : #VkPhysicalDeviceExclusiveScissorFeaturesNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceExclusiveScissorFeaturesNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(exclusiveScissor 'VkBool32')
	)
]
