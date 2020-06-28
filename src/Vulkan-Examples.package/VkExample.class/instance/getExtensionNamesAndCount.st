as yet unclassified
getExtensionNamesAndCount

	| names extensionCount glfwExtensions count |
	SBExample self: [VkExample basicNew] args: [{}] label: 'example'.
	extensionCount := IntegerArray new: 1.
	glfwExtensions := GLFW getRequiredInstanceExtensions: extensionCount.
	
	count := extensionCount first + 1.
	names := ExternalData
		fromHandle: (ExternalAddress allocate: ExternalAddress wordSize * count)
		type: ExternalType intptr_t asPointerType.
	1
		to: extensionCount first
		do: [:index |
			names at: index put: (glfwExtensions pointerAt: (index - 1) * ExternalAddress wordSize + 1) asInteger].
	names at: extensionCount first + 1 put: 'VK_EXT_debug_utils' asExternalString getHandle asInteger.
	
	^ {names. count}