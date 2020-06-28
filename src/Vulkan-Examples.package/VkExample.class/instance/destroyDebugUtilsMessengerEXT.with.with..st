as yet unclassified
destroyDebugUtilsMessengerEXT: instance with: messenger with: pAllocator

	| funcAddr method |
	funcAddr := VkAPI new vkGetInstanceProcAddr: instance with: 'vkDestroyDebugUtilsMessengerEXT'.
	funcAddr ifNil: [self error: 'extension method could not be loaded'].
	
	method := VkAPI >> #vkDestroyDebugUtilsMessengerEXT:with:with:.
	(method literalAt: 1) setHandle: funcAddr getHandle.
	^ VkAPI new vkDestroyDebugUtilsMessengerEXT: instance with: messenger with: pAllocator