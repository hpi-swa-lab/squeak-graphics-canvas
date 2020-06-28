as yet unclassified
cleanup

	SBToggledCode
		comment: ''
		active: 0
		do: {
			[
				debugMessenger ifNotNil: [
					self destroyDebugUtilsMessengerEXT: instance with: debugMessenger with: nil]]
		}.
	VkAPI new vkDestroyInstance: instance with: nil.
	GLFW destroyWindow: window.
	GLFW terminate