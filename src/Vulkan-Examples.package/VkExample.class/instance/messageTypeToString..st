as yet unclassified
messageTypeToString: aMessageType

	aMessageType = VkDebugUtilsMessageTypeFlagsEXT VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT ifTrue: [^ 'GENERAL'].
	aMessageType = VkDebugUtilsMessageTypeFlagsEXT VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT ifTrue: [^ 'VALIDATION'].
	aMessageType = VkDebugUtilsMessageTypeFlagsEXT VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT ifTrue: [^ 'PERFORMANCE']