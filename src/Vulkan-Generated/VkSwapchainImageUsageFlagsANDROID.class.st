Class {
	#name : #VkSwapchainImageUsageFlagsANDROID,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSwapchainImageUsageFlagsANDROID class >> VK_SWAPCHAIN_IMAGE_USAGE_SHARED_BIT_ANDROID [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkSwapchainImageUsageFlagsANDROID class >> originalTypeName [

    ^ 'long'
]
