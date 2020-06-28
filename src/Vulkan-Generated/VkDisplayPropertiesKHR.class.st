Class {
	#name : #VkDisplayPropertiesKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDisplayPropertiesKHR class >> fields [

	^ #(
		(display 'VkDisplayKHR')
		(displayName 'char*')
		(physicalDimensions 'VkExtent2D')
		(physicalResolution 'VkExtent2D')
		(supportedTransforms 'VkSurfaceTransformFlagsKHR')
		(planeReorderPossible 'VkBool32')
		(persistentContent 'VkBool32')
	)
]
