Class {
	#name : #VkSurfaceCapabilitiesKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSurfaceCapabilitiesKHR class >> fields [

	^ #(
		(minImageCount 'uint32_t')
		(maxImageCount 'uint32_t')
		(currentExtent 'VkExtent2D')
		(minImageExtent 'VkExtent2D')
		(maxImageExtent 'VkExtent2D')
		(maxImageArrayLayers 'uint32_t')
		(supportedTransforms 'VkSurfaceTransformFlagsKHR')
		(currentTransform 'VkSurfaceTransformFlagsKHR')
		(supportedCompositeAlpha 'VkCompositeAlphaFlagsKHR')
		(supportedUsageFlags 'VkImageUsageFlags')
	)
]