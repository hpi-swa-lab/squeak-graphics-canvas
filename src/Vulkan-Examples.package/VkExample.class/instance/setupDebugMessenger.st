as yet unclassified
setupDebugMessenger

	| createInfo |
	createInfo := self createDebugMessenger.
	debugMessenger := VkDebugUtilsMessengerEXT externalNew.
	self checkError: (self createDebugUtilsMessengerEXT: instance with: createInfo with: nil with: debugMessenger).
	createInfo free