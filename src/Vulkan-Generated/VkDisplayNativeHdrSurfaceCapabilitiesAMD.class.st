Class {
	#name : #VkDisplayNativeHdrSurfaceCapabilitiesAMD,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDisplayNativeHdrSurfaceCapabilitiesAMD class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(localDimmingSupport 'VkBool32')
	)
]
