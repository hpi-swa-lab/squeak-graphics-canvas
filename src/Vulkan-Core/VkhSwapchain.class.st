Class {
	#name : #VkhSwapchain,
	#superclass : #Object,
	#instVars : [
		'swapChainImageFormat',
		'swapExtent',
		'swapChain',
		'swapChainImages',
		'context',
		'swapChainImageViews'
	],
	#category : #'Vulkan-Core'
}

{ #category : #'as yet unclassified' }
VkhSwapchain >> cleanupSwapChain [
	
	swapChainImageViews do: [:view |
		VkAPI new vkDestroyImageView: context device with: view with: nil].
	swapChainImageViews := nil.
	
	VkAPI new vkDestroySwapchainKHR: context device with: swapChain with: nil
]

{ #category : #'as yet unclassified' }
VkhSwapchain >> createFor: aContext [

	| capabilities formatCount formats surfaceFormat presentMode presentModes presentModeCount imageCount createInfo |
	context := aContext.
	
	capabilities := VkSurfaceCapabilitiesKHR externalNew zeroAllFields.
	VkAPI new vkGetPhysicalDeviceSurfaceCapabilitiesKHR: context physicalDevice with: context surface with: capabilities.
	
	formatCount := IntegerArray new: 1.
	VkAPI new vkGetPhysicalDeviceSurfaceFormatsKHR: context physicalDevice with: context surface with: formatCount with: nil.
	formats := VkSurfaceFormatKHR allocate: formatCount first.
	VkAPI new
		vkGetPhysicalDeviceSurfaceFormatsKHR: context physicalDevice
		with: context surface
		with: formatCount
		with: (VkSurfaceFormatKHR fromHandle: formats getHandle).
	
	presentModeCount := IntegerArray new: 1.
	VkAPI new vkGetPhysicalDeviceSurfacePresentModesKHR: context physicalDevice with: context surface with: presentModeCount with: nil.
	self
		passArrayOfPointers: presentModeCount first
		of: VkPresentModeKHR
		to: [:pointer :array |
			VkAPI new
				vkGetPhysicalDeviceSurfacePresentModesKHR: context physicalDevice
				with: context surface
				with: presentModeCount
				with: pointer.
			presentModes := array].
	
	surfaceFormat := self chooseSwapSurfaceFormat: formats.
	swapChainImageFormat := surfaceFormat format.
	presentMode := self chooseSwapPresentMode: presentModes.
	swapExtent := capabilities currentExtent.
	
	imageCount := capabilities minImageCount + 1.
	(capabilities maxImageCount > 0 and: [imageCount > capabilities maxImageCount]) ifTrue: [imageCount := capabilities maxImageCount].
	
	createInfo := VkSwapchainCreateInfoKHR externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR;
		surface: context surface;
		minImageCount: imageCount;
		imageFormat: surfaceFormat format;
		imageColorSpace: surfaceFormat colorSpace;
		imageExtent: swapExtent;
		imageArrayLayers: 1;
		imageUsage: VkImageUsageFlags VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT;
		imageSharingMode: VkSharingMode VK_SHARING_MODE_EXCLUSIVE;
		preTransform: capabilities currentTransform;
		compositeAlpha: VkCompositeAlphaFlagsKHR VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR;
		presentMode: presentMode;
		clipped: (VkBool32 on: 1).
	self
		passArrayOfPointers: 1
		of: VkSwapchainKHR
		to: [:pointer :array |
			self checkError: (VkAPI new vkCreateSwapchainKHR: context device with: createInfo with: nil with: pointer).
			swapChain := array at: 1].
	
	self getSwapchainImages.
	self createImageViews
]

{ #category : #'as yet unclassified' }
VkhSwapchain >> createImageViews [

	swapChainImageViews := Array new: swapChainImages size.
	swapChainImages withIndexDo: [:image :index |
		swapChainImageViews at: index put: (self createImageView: image format: swapChainImageFormat)]
]

{ #category : #'as yet unclassified' }
VkhSwapchain >> getSwapchainImages [

	| imageCountRet |
	imageCountRet := IntegerArray new: 1.
	VkAPI new vkGetSwapchainImagesKHR: context device with: swapChain with: imageCountRet with: nil.
	
	self
		passArrayOfPointers: imageCountRet first
		of: VkImage
		to: [:pointer :array |
			self checkError: (VkAPI new vkGetSwapchainImagesKHR: context device with: swapChain with: imageCountRet with: pointer).
			swapChainImages := array]
]
