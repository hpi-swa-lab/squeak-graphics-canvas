Class {
	#name : #VkPhysicalDeviceHostQueryResetFeatures,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceHostQueryResetFeatures class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(hostQueryReset 'VkBool32')
	)
]
