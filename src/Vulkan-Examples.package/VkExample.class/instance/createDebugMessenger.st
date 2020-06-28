as yet unclassified
createDebugMessenger

	debugCallback ifNil: [
		debugCallback := FFICallback
			signature: '<callback: VkBool32 (*)(VkDebugUtilsMessageSeverityFlagsEXT VkDebugUtilsMessageTypeFlagsEXT VkDebugUtilsMessengerCallbackDataEXT* void*)>'
			block: [:messageSeverity :messageTypes :pCallbackData :pUserData |
				Transcript
					nextPutAll: (self messageSeverityToString: messageSeverity);
					nextPutAll: ': ';
					nextPutAll: pCallbackData pMessage;
					cr;
					flush.
				0]].
	^ VkDebugUtilsMessengerCreateInfoEXT externalNew
		sType: VkStructureType VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT;
		messageSeverity: (VkDebugUtilsMessageSeverityFlagsEXT on: (VkDebugUtilsMessageSeverityFlagsEXT VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT bitOr: VkDebugUtilsMessageSeverityFlagsEXT VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT));
		messageType: (VkDebugUtilsMessageTypeFlagsEXT on: ((VkDebugUtilsMessageTypeFlagsEXT VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT bitOr: VkDebugUtilsMessageTypeFlagsEXT VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT) bitOr: VkDebugUtilsMessageTypeFlagsEXT VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT));
		pfnUserCallback: (debugCallback thunk asType: (ExternalType structTypeNamed: #'PFN_vkDebugUtilsMessengerCallbackEXT'))