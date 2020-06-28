as yet unclassified
messageSeverityToString: aMessageSeverity

	SBLabel text: ['TODO: can be multiple severities?'].
	(aMessageSeverity bitAnd: VkDebugUtilsMessageSeverityFlagsEXT VK_DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT) ~= 0 ifTrue: [^ 'INFO'].
	(aMessageSeverity bitAnd: VkDebugUtilsMessageSeverityFlagsEXT VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT) ~= 0 ifTrue: [^ 'WARNING'].
	(aMessageSeverity bitAnd: VkDebugUtilsMessageSeverityFlagsEXT VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT) ~= 0 ifTrue: [^ 'VERBOSE'].
	(aMessageSeverity bitAnd: VkDebugUtilsMessageSeverityFlagsEXT VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT) ~= 0 ifTrue: [^ 'ERROR'].
	^ 'NONE'