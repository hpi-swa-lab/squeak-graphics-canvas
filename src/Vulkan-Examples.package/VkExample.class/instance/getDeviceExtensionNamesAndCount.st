as yet unclassified
getDeviceExtensionNamesAndCount

	| names extensions |
	SBExample self: [VkExample basicNew] args: [{}] label: 'example'.
	extensions := #('VK_KHR_swapchain').
	names := ExternalData
		fromHandle: (ExternalAddress allocate: ExternalAddress wordSize * extensions size)
		type: ExternalType intptr_t asPointerType.
	extensions withIndexDo: [:extensionName :index |
		names at: index put: extensionName asExternalString getHandle asInteger].
	
	^ {names. extensions size}