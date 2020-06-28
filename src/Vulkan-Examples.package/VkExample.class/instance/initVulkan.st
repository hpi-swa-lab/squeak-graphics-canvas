as yet unclassified
initVulkan

	self createInstance.
	self setupDebugMessenger.
	self createSurface.
	self pickPhysicalDevice.
	self createLogicalDevice