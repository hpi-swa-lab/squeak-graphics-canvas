as yet unclassified
createSurface

	| ptr |
	ptr := ExternalData fromHandle: (ExternalAddress allocate: 8) type: ExternalType intptr_t asPointerType.
	GLFW createWindowSurface: instance with: window with: nil with: ptr.
	surface := VkSurfaceKHR on: (ptr at: 1)