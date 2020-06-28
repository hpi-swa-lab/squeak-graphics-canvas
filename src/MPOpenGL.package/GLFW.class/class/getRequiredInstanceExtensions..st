as yet unclassified
getRequiredInstanceExtensions: count
	<apicall: byte* 'glfwGetRequiredInstanceExtensions' (uint32_t*) module: 'libglfw.so'>
	^self externalCallFailed