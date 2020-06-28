Class {
	#name : #VkSwapchainDisplayNativeHdrCreateInfoAMD,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSwapchainDisplayNativeHdrCreateInfoAMD class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(localDimmingEnable 'VkBool32')
	)
]
