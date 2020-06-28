Class {
	#name : #VkSwapchainCreateInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSwapchainCreateInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkSwapchainCreateFlagsKHR')
		(surface 'VkSurfaceKHR')
		(minImageCount 'uint32_t')
		(imageFormat 'VkFormat')
		(imageColorSpace 'VkColorSpaceKHR')
		(imageExtent 'VkExtent2D')
		(imageArrayLayers 'uint32_t')
		(imageUsage 'VkImageUsageFlags')
		(imageSharingMode 'VkSharingMode')
		(queueFamilyIndexCount 'uint32_t')
		(pQueueFamilyIndices 'uint32_t*')
		(preTransform 'VkSurfaceTransformFlagsKHR')
		(compositeAlpha 'VkCompositeAlphaFlagsKHR')
		(presentMode 'VkPresentModeKHR')
		(clipped 'VkBool32')
		(oldSwapchain 'VkSwapchainKHR')
	)
]
