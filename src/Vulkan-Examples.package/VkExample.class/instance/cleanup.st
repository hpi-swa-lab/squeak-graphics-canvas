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
	VkAPI new vkDestroySwapchainKHR: device with: swapChain with: nil.
	VkAPI new vkDestroyDevice: device with: nil.
	VkAPI new vkDestroySurfaceKHR: instance with: surface with: nil.
	VkAPI new vkDestroyInstance: instance with: nil.
	GLFW destroyWindow: window.
	GLFW terminate