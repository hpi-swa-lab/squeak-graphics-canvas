Class {
	#name : #VkDisplayPlaneCapabilitiesKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDisplayPlaneCapabilitiesKHR class >> fields [

	^ #(
		(supportedAlpha 'VkDisplayPlaneAlphaFlagsKHR')
		(minSrcPosition 'VkOffset2D')
		(maxSrcPosition 'VkOffset2D')
		(minSrcExtent 'VkExtent2D')
		(maxSrcExtent 'VkExtent2D')
		(minDstPosition 'VkOffset2D')
		(maxDstPosition 'VkOffset2D')
		(minDstExtent 'VkExtent2D')
		(maxDstExtent 'VkExtent2D')
	)
]
