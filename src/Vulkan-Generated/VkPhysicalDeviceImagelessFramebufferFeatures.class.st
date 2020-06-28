Class {
	#name : #VkPhysicalDeviceImagelessFramebufferFeatures,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceImagelessFramebufferFeatures class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(imagelessFramebuffer 'VkBool32')
	)
]
