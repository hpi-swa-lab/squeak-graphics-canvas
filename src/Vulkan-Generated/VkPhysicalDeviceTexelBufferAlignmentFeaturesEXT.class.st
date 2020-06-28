Class {
	#name : #VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(texelBufferAlignment 'VkBool32')
	)
]
