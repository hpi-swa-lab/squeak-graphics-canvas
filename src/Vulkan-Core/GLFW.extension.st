Extension { #name : #GLFW }

{ #category : #'*Vulkan-Core' }
GLFW class >> createWindowSurface: instance with: window with: allocator with: surface [

	<apicall: VkResult 'glfwCreateWindowSurface' (VkInstance void* VkAllocationCallbacks* intptr_t*) module: 'libglfw'>
	^ self externalCallFailed
]
